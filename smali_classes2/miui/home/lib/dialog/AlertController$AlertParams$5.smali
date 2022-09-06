.class Lmiui/home/lib/dialog/AlertController$AlertParams$5;
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

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/widget/ListView;Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->val$dialog:Lmiui/home/lib/dialog/AlertController;

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

    .line 1858
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 1859
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1861
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    .line 1862
    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    .line 1861
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
