.class Lmiui/home/lib/dialog/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
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

    .line 138
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p1

    sget v0, Lmiui/home/lib/dialog/R$id;->buttonPanel:I

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {p0}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p0

    sget p1, Lmiui/home/lib/dialog/R$id;->buttonPanel:I

    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
