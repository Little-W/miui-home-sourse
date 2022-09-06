.class Lmiui/home/lib/dialog/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController;->setupView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 653
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object v0

    sget v1, Lmiui/home/lib/dialog/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 655
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$3;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v1, v0}, Lmiui/home/lib/dialog/AlertController;->access$800(Lmiui/home/lib/dialog/AlertController;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
