.class public Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Collector$FirstFinder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 2

    .line 27
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 28
    new-instance v1, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    invoke-static {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-object v0
.end method

.method public static findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    new-instance v0, Lorg/jsoup/select/Collector$FirstFinder;

    invoke-direct {v0, p0}, Lorg/jsoup/select/Collector$FirstFinder;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 47
    invoke-virtual {v0, p1, p1}, Lorg/jsoup/select/Collector$FirstFinder;->find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$collect$0(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 29
    instance-of p4, p3, Lorg/jsoup/nodes/Element;

    if-eqz p4, :cond_0

    .line 30
    check-cast p3, Lorg/jsoup/nodes/Element;

    .line 31
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p2, p3}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
