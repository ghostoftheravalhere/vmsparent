.class public final Lorg/jsoup/select/Evaluator$ContainsWholeText;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainsWholeText"
.end annotation


# instance fields
.field private final searchText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 692
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 693
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$ContainsWholeText;->searchText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 698
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/jsoup/select/Evaluator$ContainsWholeText;->searchText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 703
    iget-object v0, p0, Lorg/jsoup/select/Evaluator$ContainsWholeText;->searchText:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":containsWholeText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
