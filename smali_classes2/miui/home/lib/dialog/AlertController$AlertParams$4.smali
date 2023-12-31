.class Lmiui/home/lib/dialog/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController$AlertParams;->createListView(Lmiui/home/lib/dialog/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

.field final synthetic val$dialog:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 2162
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2165
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2166
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-boolean p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    .line 2167
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method
