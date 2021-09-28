.class Lcom/miui/maml/elements/ViewHolderScreenElement$2;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ViewHolderScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iput-boolean p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
