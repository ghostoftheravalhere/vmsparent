.class public final synthetic Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic f$0:Lorg/jsoup/helper/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/helper/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda3;->f$0:Lorg/jsoup/helper/Consumer;

    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda3;->f$0:Lorg/jsoup/helper/Consumer;

    invoke-static {v0, p1, p2}, Lorg/jsoup/nodes/Element;->lambda$forEach$4(Lorg/jsoup/helper/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method
