.class Lmiui/home/lib/dialog/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController$AlertParams;->createListView(Lmiui/home/lib/dialog/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .line 2073
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$1;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p6, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 2076
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 2077
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$1;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$1;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2080
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    const/4 p0, 0x0

    .line 2083
    invoke-static {p3, p0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    if-nez p2, :cond_1

    .line 2085
    invoke-static {p3}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_1
    const p0, 0x1020014

    .line 2087
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    return-object p3
.end method
