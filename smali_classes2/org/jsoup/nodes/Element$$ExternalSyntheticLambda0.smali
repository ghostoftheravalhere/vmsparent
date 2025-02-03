.class public final synthetic Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lorg/jsoup/nodes/Element;->lambda$forEach$3(Ljava/util/function/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method
