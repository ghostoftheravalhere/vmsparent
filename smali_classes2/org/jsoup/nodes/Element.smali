.class public Lorg/jsoup/nodes/Element;
.super Lorg/jsoup/nodes/Node;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Element$NodeList;
    }
.end annotation


# static fields
.field private static final BaseUriKey:Ljava/lang/String;

.field private static final ClassSplit:Ljava/util/regex/Pattern;

.field private static final EmptyChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attributes:Lorg/jsoup/nodes/Attributes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private shadowChildrenRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Element;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tag:Lorg/jsoup/parser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->EmptyChildren:Ljava/util/List;

    const-string v0, "\\s+"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->ClassSplit:Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    .line 47
    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->internalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-static {p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/jsoup/nodes/Attributes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    .line 71
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lorg/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 73
    iput-object p3, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 74
    iput-object p1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->setBaseUri(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object p0
.end method

.method private static appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 2

    .line 1407
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 1408
    iget-object v1, p1, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v1}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/jsoup/nodes/CDataNode;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1409
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static appendWholeText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1350
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 1351
    check-cast p0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "br"

    .line 1352
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->isNode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\n"

    .line 1353
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method private static indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jsoup/nodes/Element;",
            ">(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 977
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 979
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isFormatAsBlock(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    .line 1847
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInlineable(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 2

    .line 1851
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isInline()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1853
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->isEffectivelyFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1855
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "br"

    .line 1856
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->isNode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic lambda$data$2(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1481
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz p2, :cond_0

    .line 1482
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 1483
    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1484
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Comment;

    if-eqz p2, :cond_1

    .line 1485
    check-cast p1, Lorg/jsoup/nodes/Comment;

    .line 1486
    invoke-virtual {p1}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1487
    :cond_1
    instance-of p2, p1, Lorg/jsoup/nodes/CDataNode;

    if-eqz p2, :cond_2

    .line 1490
    check-cast p1, Lorg/jsoup/nodes/CDataNode;

    .line 1491
    invoke-virtual {p1}, Lorg/jsoup/nodes/CDataNode;->getWholeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$forEach$3(Ljava/util/function/Consumer;Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1809
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    .line 1810
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$forEach$4(Lorg/jsoup/helper/Consumer;Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1822
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    .line 1823
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-interface {p0, p1}, Lorg/jsoup/helper/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$hasText$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 0

    .line 1457
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz p2, :cond_0

    .line 1458
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 1459
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1460
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1461
    sget-object p0, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p0

    .line 1464
    :cond_0
    sget-object p0, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p0
.end method

.method static synthetic lambda$wholeText$0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1345
    invoke-static {p1, p0}, Lorg/jsoup/nodes/Element;->appendWholeText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private nextElementSiblings(Z)Lorg/jsoup/select/Elements;
    .locals 2

    .line 935
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 936
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v1, :cond_0

    return-object v0

    .line 938
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 939
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->nextAll()Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->prevAll()Lorg/jsoup/select/Elements;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private ownText(Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 1395
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1396
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 1397
    instance-of v2, v1, Lorg/jsoup/nodes/TextNode;

    if-eqz v2, :cond_0

    .line 1398
    check-cast v1, Lorg/jsoup/nodes/TextNode;

    .line 1399
    invoke-static {p1, v1}, Lorg/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    goto :goto_1

    :cond_0
    const-string v2, "br"

    .line 1400
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->isNode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    .line 1401
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static preserveWhitespace(Lorg/jsoup/nodes/Node;)Z
    .locals 4
    .param p0    # Lorg/jsoup/nodes/Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1416
    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1417
    check-cast p0, Lorg/jsoup/nodes/Element;

    move v0, v1

    .line 1420
    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 1422
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p0

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method

.method private static searchUpForAttribute(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1593
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1595
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1596
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1597
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 784
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 795
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 733
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 734
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    .line 735
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/Node;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->addChildren([Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 574
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->reparentChild(Lorg/jsoup/nodes/Node;)V

    .line 578
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 579
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    return-object p0
.end method

.method public appendChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/Node;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 592
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 682
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 707
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 708
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 603
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 226
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Z)Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public attributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lorg/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->searchUpForAttribute(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 761
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 772
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public child(I)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method childElementsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Lorg/jsoup/nodes/Element;->EmptyChildren:Ljava/util/List;

    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 338
    iget-object v3, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Node;

    .line 339
    instance-of v4, v3, Lorg/jsoup/nodes/Element;

    if-eqz v4, :cond_2

    .line 340
    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public childNodeSize()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public children()Lorg/jsoup/select/Elements;
    .locals 2

    .line 320
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public childrenSize()I
    .locals 1

    .line 308
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    .line 1503
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public classNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1513
    sget-object v0, Lorg/jsoup/nodes/Element;->ClassSplit:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1514
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    .line 1515
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1526
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1527
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "class"

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    const-string v2, " "

    invoke-static {p1, v2}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :goto_0
    return-object p0
.end method

.method public clearAttributes()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1771
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 1772
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clearAttributes()Lorg/jsoup/nodes/Node;

    const/4 v0, 0x0

    .line 1773
    iput-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clearAttributes()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->clearAttributes()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1749
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public closest(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 504
    invoke-static {p1}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->closest(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public closest(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 515
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->root()Lorg/jsoup/nodes/Element;

    move-result-object v0

    move-object v1, p0

    .line 519
    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 521
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public cssSelector()Ljava/lang/String;
    .locals 6

    .line 830
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/parser/TokenQueue;->escapeCssIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 835
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 836
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v3, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    :cond_0
    return-object v0

    .line 844
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->escapeCssIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\:"

    const-string v4, "|"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 848
    new-instance v3, Lorg/jsoup/internal/StringUtil$StringJoiner;

    const-string v4, "."

    invoke-direct {v3, v4}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/jsoup/parser/TokenQueue;->escapeCssIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {v3}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x2e

    .line 852
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v3

    instance-of v3, v3, Lorg/jsoup/nodes/Document;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, " > "

    .line 857
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 860
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ":nth-child(%d)"

    .line 859
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->cssSelector()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 855
    :cond_6
    :goto_1
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public data()Ljava/lang/String;
    .locals 2

    .line 1479
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1480
    new-instance v1, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Element;

    .line 1494
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/DataNode;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 393
    instance-of v3, v2, Lorg/jsoup/nodes/DataNode;

    if-eqz v3, :cond_0

    .line 394
    check-cast v2, Lorg/jsoup/nodes/DataNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dataset()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->dataset()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 2
    .param p1    # Lorg/jsoup/nodes/Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1760
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 1761
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 1762
    new-instance v0, Lorg/jsoup/nodes/Element$NodeList;

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element$NodeList;-><init>(Lorg/jsoup/nodes/Element;I)V

    iput-object v0, p1, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 1763
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method protected bridge synthetic doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0
    .param p1    # Lorg/jsoup/nodes/Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method protected doSetBaseUri(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    return-void
.end method

.method public elementSiblingIndex()I
    .locals 1

    .line 960
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 961
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public empty()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->empty()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public endSourceRange()Lorg/jsoup/nodes/Range;
    .locals 1

    const/4 v0, 0x0

    .line 1669
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Range;->of(Lorg/jsoup/nodes/Node;Z)Lorg/jsoup/nodes/Range;

    move-result-object v0

    return-object v0
.end method

.method protected ensureChildNodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Lorg/jsoup/nodes/Element$NodeList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Element$NodeList;-><init>(Lorg/jsoup/nodes/Element;I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    return-object v0
.end method

.method public expectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 468
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->selectFirst(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 469
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "No elements matched the query \'%s\' on element \'%s\'."

    goto :goto_0

    :cond_0
    const-string v1, "No elements matched the query \'%s\' in the document."

    .line 472
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 467
    invoke-static {v0, v1, p1}, Lorg/jsoup/helper/Validate;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public filter(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1830
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->filter(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic filter(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->filter(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public firstElementChild()Lorg/jsoup/nodes/Element;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 993
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 995
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 997
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    .line 998
    instance-of v5, v4, Lorg/jsoup/nodes/Element;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/jsoup/nodes/Element;

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public firstElementSibling()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 947
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 949
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public forEach(Ljava/util/function/Consumer;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lorg/jsoup/nodes/Element;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1807
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1808
    new-instance v0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public forEach(Lorg/jsoup/helper/Consumer;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/helper/Consumer<",
            "-",
            "Lorg/jsoup/nodes/Element;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1820
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1821
    new-instance v0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda3;-><init>(Lorg/jsoup/helper/Consumer;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public forEachNode(Ljava/util/function/Consumer;)Lorg/jsoup/nodes/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lorg/jsoup/nodes/Node;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1796
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->forEachNode(Ljava/util/function/Consumer;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic forEachNode(Ljava/util/function/Consumer;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->forEachNode(Ljava/util/function/Consumer;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public getAllElements()Lorg/jsoup/select/Elements;
    .locals 1

    .line 1286
    new-instance v0, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1045
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1047
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 1048
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1049
    invoke-virtual {p1, v0}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1078
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1081
    new-instance v0, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeStarting(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1091
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1094
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeStarting;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1105
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1149
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1138
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 3

    .line 1172
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern syntax error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1159
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1116
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1127
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1066
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1068
    new-instance v0, Lorg/jsoup/select/Evaluator$Class;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexEquals(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1203
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexGreaterThan(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1194
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexLessThan(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1185
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1029
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1030
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1032
    new-instance v0, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1225
    new-instance v0, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1214
    new-instance v0, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 1273
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 1275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pattern syntax error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1261
    new-instance v0, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 1247
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 1249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pattern syntax error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1235
    new-instance v0, Lorg/jsoup/select/Evaluator$Matches;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method protected hasAttributes()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasChildNodes()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 13

    .line 1542
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "class"

    .line 1545
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_7

    if-ge v2, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v9, :cond_2

    .line 1555
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    move v3, v1

    move v10, v3

    move v11, v10

    :goto_0
    if-ge v11, v2, :cond_6

    .line 1562
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_3

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1565
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v12

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    move v10, v11

    move v3, v12

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1581
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public hasText()Z
    .locals 2

    .line 1455
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1456
    new-instance v1, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->filter(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/Element;

    .line 1466
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1730
    iget-object v2, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public html()Ljava/lang/String;
    .locals 2

    .line 1720
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1721
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 1722
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1723
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1742
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->empty()Lorg/jsoup/nodes/Element;

    .line 1743
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public id(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 214
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string v0, "id"

    .line 215
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/Node;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    const-string v0, "Children collection to be inserted must not be null."

    .line 644
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "Insert position out of bounds."

    .line 647
    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array p2, v1, [Lorg/jsoup/nodes/Node;

    .line 650
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/Node;

    .line 651
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public varargs insertChildren(I[Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 2

    const-string v0, "Children collection to be inserted must not be null."

    .line 665
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Insert position out of bounds."

    .line 668
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 670
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 0

    .line 484
    invoke-static {p1}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->is(Lorg/jsoup/select/Evaluator;)Z

    move-result p1

    return p1
.end method

.method public is(Lorg/jsoup/select/Evaluator;)Z
    .locals 1

    .line 493
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->root()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method public isBlock()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    return v0
.end method

.method public lastElementChild()Lorg/jsoup/nodes/Element;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1011
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1015
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Node;

    .line 1016
    instance-of v4, v3, Lorg/jsoup/nodes/Element;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/jsoup/nodes/Element;

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public lastElementSibling()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 969
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 971
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public nextElementSibling()Lorg/jsoup/nodes/Element;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 892
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 893
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 894
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    .line 895
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_1

    .line 896
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public nextElementSiblings()Lorg/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x1

    .line 907
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->nextElementSiblings(Z)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nodelistChanged()V
    .locals 1

    .line 352
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->nodelistChanged()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lorg/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public normalName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1678
    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Element;->shouldIndent(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1680
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1681
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_1
    :goto_0
    const/16 p2, 0x3c

    .line 1686
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1687
    iget-object p2, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 1690
    :cond_2
    iget-object p2, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1691
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1692
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    const-string p2, " />"

    .line 1694
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1697
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1703
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1704
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    :cond_1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    .line 1707
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_3
    const-string p2, "</"

    .line 1708
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    return-void
.end method

.method public ownText()Ljava/lang/String;
    .locals 1

    .line 1389
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1390
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->ownText(Ljava/lang/StringBuilder;)V

    .line 1391
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final parent()Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public bridge synthetic parent()Lorg/jsoup/nodes/Node;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public parents()Lorg/jsoup/select/Elements;
    .locals 3

    .line 272
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 273
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "#root"

    .line 274
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->isNode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public prepend(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 746
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 747
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jsoup/nodes/Node;

    .line 748
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/Node;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 615
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 617
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/Node;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 695
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public prependText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 720
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 721
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public previousElementSibling()Lorg/jsoup/nodes/Element;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 916
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 917
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 918
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 920
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public previousElementSiblings()Lorg/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x0

    .line 931
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->nextElementSiblings(Z)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1781
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public removeClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1608
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1611
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1612
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public root()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1786
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->root()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public bridge synthetic root()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->root()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 418
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->select(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public select(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 429
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->select(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 443
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->selectFirst(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 455
    invoke-static {p1, p0}, Lorg/jsoup/select/Collector;->findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectXpath(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/Node;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 562
    invoke-static {p1, p0, p2}, Lorg/jsoup/nodes/NodeUtils;->selectXpath(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public selectXpath(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 2

    .line 545
    new-instance v0, Lorg/jsoup/select/Elements;

    const-class v1, Lorg/jsoup/nodes/Element;

    invoke-static {p1, p0, v1}, Lorg/jsoup/nodes/NodeUtils;->selectXpath(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public shallowClone()Lorg/jsoup/nodes/Element;
    .locals 4

    .line 1755
    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v3

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public bridge synthetic shallowClone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->shallowClone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method shouldIndent(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    .line 1673
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Element;->isFormatAsBlock(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Element;->isInlineable(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {p1}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public siblingElements()Lorg/jsoup/select/Elements;
    .locals 3

    .line 871
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lorg/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(I)V

    return-object v0

    .line 874
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 875
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>(I)V

    .line 876
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-eq v2, p0, :cond_1

    .line 878
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public tag()Lorg/jsoup/parser/Tag;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object v0
.end method

.method public tagName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    const-string v0, "tagName"

    .line 175
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmptyParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 2

    .line 1306
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1307
    new-instance v1, Lorg/jsoup/nodes/Element$1;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/nodes/Element$1;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 1333
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1437
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1438
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->empty()Lorg/jsoup/nodes/Element;

    .line 1440
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Parser;->isContentForTagData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    new-instance v0, Lorg/jsoup/nodes/DataNode;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 1445
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public textNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/TextNode;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 375
    instance-of v3, v2, Lorg/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 376
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1623
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1625
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1626
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1629
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1630
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1791
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public val()Ljava/lang/String;
    .locals 2

    .line 1640
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "value"

    .line 1643
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public val(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1652
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 1655
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public wholeOwnText()Ljava/lang/String;
    .locals 4

    .line 1367
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1368
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1370
    iget-object v3, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Node;

    .line 1371
    invoke-static {v3, v0}, Lorg/jsoup/nodes/Element;->appendWholeText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1374
    :cond_0
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wholeText()Ljava/lang/String;
    .locals 2

    .line 1344
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1345
    new-instance v1, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 1346
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 816
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method
