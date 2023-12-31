.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;
.super Ljava/lang/Object;
.source "ReversibleTagGroup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

.field final synthetic val$state:I

.field final synthetic val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;I)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;->this$1:Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;->val$this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    iput p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 766
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;->val$state:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
