.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final CssIdentifierChars:[Ljava/lang/String;

.field private static final ESC:C = '\\'

.field private static final ElementSelectorChars:[Ljava/lang/String;


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "*|"

    const-string v1, "|"

    const-string v2, "_"

    const-string v3, "-"

    .line 347
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    .line 357
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    return-void
.end method

.method private varargs consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 361
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x0

    .line 363
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 366
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    move v1, v4

    goto :goto_0

    .line 367
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 374
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 375
    invoke-static {p1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static escapeCssIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 302
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    new-instance v1, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 304
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 305
    sget-object p0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p0, 0x5c

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs matchesCssIdentifier([Ljava/lang/String;)Z
    .locals 1

    .line 379
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private remainingLength()I
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 281
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v5, p0, v3

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    if-ne v4, v6, :cond_1

    .line 286
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFirst(Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-void
.end method

.method public advance()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    :cond_0
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v5, v0

    move v6, v5

    move v2, v1

    move v3, v2

    move v4, v3

    move v7, v4

    move v8, v7

    .line 239
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_4

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v9

    const/16 v10, 0x5c

    if-eq v2, v10, :cond_5

    const/16 v10, 0x27

    if-ne v9, v10, :cond_1

    if-eq v9, p1, :cond_1

    if-nez v3, :cond_1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v10, 0x22

    if-ne v9, v10, :cond_2

    if-eq v9, p1, :cond_2

    if-nez v4, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    if-nez v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    if-ne v9, p1, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v0, :cond_7

    .line 254
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    :cond_4
    if-ne v9, p2, :cond_7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    const/16 v10, 0x51

    if-ne v9, v10, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/16 v10, 0x45

    if-ne v9, v10, :cond_7

    move v8, v1

    :cond_7
    :goto_2
    if-lez v7, :cond_8

    if-eqz v2, :cond_8

    .line 265
    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    :cond_8
    :goto_3
    if-gtz v7, :cond_b

    :goto_4
    if-ltz v6, :cond_9

    .line 268
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    const-string p1, ""

    :goto_5
    if-lez v7, :cond_a

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Did not find balanced marker at \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    :cond_a
    return-object p1

    :cond_b
    move v2, v9

    goto :goto_0
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    return-object v0
.end method

.method public chompToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 215
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    return-object v0
.end method

.method public consume()C
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 138
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 141
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .locals 1

    .line 355
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .locals 1

    .line 345
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-object p1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 192
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 193
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 161
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 164
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 165
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_3

    .line 169
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v4, v5

    if-nez v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 171
    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    :cond_1
    if-gez v4, :cond_2

    .line 173
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    :cond_2
    add-int/2addr v5, v4

    .line 175
    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 178
    :cond_3
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 181
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public consumeWhitespace()Z
    .locals 2

    const/4 v0, 0x0

    .line 320
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public consumeWord()Ljava/lang/String;
    .locals 3

    .line 332
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 333
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6

    .line 54
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public varargs matchesAny([C)Z
    .locals 6

    .line 71
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    .line 75
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .locals 4

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 64
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public matchesWhitespace()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesWord()Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remainder()Ljava/lang/String;
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
