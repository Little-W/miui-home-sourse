.class Lmiui/home/lib/dialog/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController$AlertParams;->createListView(Lmiui/home/lib/dialog/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

.field final synthetic val$dialog:Lmiui/home/lib/dialog/AlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 2092
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p5, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2097
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 2098
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mLabelIndex:I

    .line 2099
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const p2, 0x1020014

    .line 2104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 2106
    iget p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2107
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget p0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 2108
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2107
    :goto_0
    invoke-virtual {p2, v0, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2109
    invoke-static {p1}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 2114
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    iget p0, p0, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 2116
    invoke-static {p0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 2117
    invoke-static {p0, p2}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-object p0
.end method
