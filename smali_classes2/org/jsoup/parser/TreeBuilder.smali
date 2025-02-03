.class abstract Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field protected baseUri:Ljava/lang/String;

.field protected currentToken:Lorg/jsoup/parser/Token;

.field protected doc:Lorg/jsoup/nodes/Document;

.field private end:Lorg/jsoup/parser/Token$EndTag;

.field protected parser:Lorg/jsoup/parser/Parser;

.field reader:Lorg/jsoup/parser/CharacterReader;

.field protected seenTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field

.field protected settings:Lorg/jsoup/parser/ParseSettings;

.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lorg/jsoup/parser/Token$StartTag;

.field tokeniser:Lorg/jsoup/parser/Tokeniser;

.field private trackSourceRange:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 33
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    return-void
.end method

.method private trackNodePosition(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;Z)V
    .locals 4
    .param p2    # Lorg/jsoup/parser/Token;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p2}, Lorg/jsoup/parser/Token;->startPos()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance v1, Lorg/jsoup/nodes/Range$Position;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v2

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v3, v0}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 208
    invoke-virtual {p2}, Lorg/jsoup/parser/Token;->endPos()I

    move-result p2

    .line 209
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2, p2}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v2

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v3, p2}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v3

    invoke-direct {v0, p2, v2, v3}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 210
    new-instance p2, Lorg/jsoup/nodes/Range;

    invoke-direct {p2, v1, v0}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 211
    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/Range;->track(Lorg/jsoup/nodes/Node;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected currentElement()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    :goto_0
    return-object v0
.end method

.method protected currentElementIs(Ljava/lang/String;)Z
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract defaultSettings()Lorg/jsoup/parser/ParseSettings;
.end method

.method protected error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 151
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, v2, p1, p2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 1
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    const-string v0, "input"

    .line 40
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUri"

    .line 41
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 45
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 46
    iput-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 47
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 48
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 49
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackPosition()Z

    move-result p1

    iput-boolean p1, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    .line 50
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackErrors()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/CharacterReader;->trackNewlines(Z)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 52
    new-instance p1, Lorg/jsoup/parser/Tokeniser;

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    return-void
.end method

.method protected isContentForTagData(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract newInstance()Lorg/jsoup/parser/TreeBuilder;
.end method

.method protected onNodeClosed(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilder;->trackNodePosition(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;Z)V

    return-void
.end method

.method protected onNodeInserted(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V
    .locals 1
    .param p2    # Lorg/jsoup/parser/Token;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilder;->trackNodePosition(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;Z)V

    return-void
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 61
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 64
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->close()V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 66
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 67
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    .line 70
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object p1
.end method

.method abstract parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract process(Lorg/jsoup/parser/Token;)Z
.end method

.method protected processEndTag(Ljava/lang/String;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$EndTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 120
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected processStartTag(Ljava/lang/String;)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 100
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 101
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method public processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 108
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 109
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    .line 112
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    .line 113
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected runParser()V
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 83
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 86
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->read()Lorg/jsoup/parser/Token;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 88
    invoke-virtual {v2}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    .line 90
    iget-object v2, v2, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_0

    return-void
.end method

.method protected tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-nez v0, :cond_0

    .line 176
    invoke-static {p1, p2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    .line 177
    iget-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
