.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/Token$TokenType;,
        Lorg/jsoup/parser/Token$Doctype;,
        Lorg/jsoup/parser/Token$StartTag;,
        Lorg/jsoup/parser/Token$EndTag;,
        Lorg/jsoup/parser/Token$Comment;,
        Lorg/jsoup/parser/Token$CData;,
        Lorg/jsoup/parser/Token$Character;,
        Lorg/jsoup/parser/Token$EOF;,
        Lorg/jsoup/parser/Token$Tag;
    }
.end annotation


# static fields
.field static final Unset:I = -0x1


# instance fields
.field private endPos:I

.field private startPos:I

.field type:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/parser/Token$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/jsoup/parser/Token;-><init>()V

    return-void
.end method

.method static reset(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method final asCharacter()Lorg/jsoup/parser/Token$Character;
    .locals 1

    .line 494
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    return-object v0
.end method

.method final asComment()Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 482
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    return-object v0
.end method

.method final asDoctype()Lorg/jsoup/parser/Token$Doctype;
    .locals 1

    .line 458
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Doctype;

    return-object v0
.end method

.method final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .locals 1

    .line 474
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    return-object v0
.end method

.method final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .locals 1

    .line 466
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    return-object v0
.end method

.method endPos()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return v0
.end method

.method endPos(I)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method final isCData()Z
    .locals 1

    .line 490
    instance-of v0, p0, Lorg/jsoup/parser/Token$CData;

    return v0
.end method

.method final isCharacter()Z
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isComment()Z
    .locals 2

    .line 478
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isDoctype()Z
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEOF()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEndTag()Z
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isStartTag()Z
    .locals 2

    .line 462
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 29
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-object p0
.end method

.method startPos()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    return v0
.end method

.method startPos(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/jsoup/parser/Token;->startPos:I

    return-void
.end method

.method tokenType()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
