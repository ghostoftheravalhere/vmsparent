.class public final Lorg/jsoup/select/CombiningEvaluator$And;
.super Lorg/jsoup/select/CombiningEvaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/CombiningEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "And"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/jsoup/select/CombiningEvaluator;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method varargs constructor <init>([Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 53
    iget v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;->num:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 54
    iget-object v2, p0, Lorg/jsoup/select/CombiningEvaluator$And;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/select/Evaluator;

    .line 55
    invoke-virtual {v2, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;->evaluators:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
