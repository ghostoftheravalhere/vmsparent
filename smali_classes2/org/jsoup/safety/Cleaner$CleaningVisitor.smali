.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lorg/jsoup/nodes/Element;

.field private numDiscarded:I

.field private final root:Lorg/jsoup/nodes/Element;

.field final synthetic this$0:Lorg/jsoup/safety/Cleaner;


# direct methods
.method private constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 135
    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    .line 136
    iput-object p3, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    return p0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 140
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_1

    .line 141
    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 143
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {v0}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {p1, p2}, Lorg/jsoup/safety/Cleaner;->access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object p1

    .line 145
    iget-object p2, p1, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    .line 146
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 148
    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iget p1, p1, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 149
    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 150
    :cond_0
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    if-eq p1, p2, :cond_4

    .line 151
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_0

    .line 153
    :cond_1
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz p2, :cond_2

    .line 154
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 155
    new-instance p2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 157
    :cond_2
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {p2}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 158
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 159
    new-instance p2, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 162
    :cond_3
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    :cond_4
    :goto_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 167
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {p2}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    :cond_0
    return-void
.end method
