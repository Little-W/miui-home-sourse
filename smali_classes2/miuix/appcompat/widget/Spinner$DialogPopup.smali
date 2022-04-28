.class Lmiuix/appcompat/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Lmiuix/appcompat/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V
    .locals 0

    .line 963
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 970
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 972
    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 993
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 978
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1027
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 1028
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 1029
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1030
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lmiuix/appcompat/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 1037
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 1047
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 1067
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 1042
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 998
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1001
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1002
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1005
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1006
    invoke-virtual {v2}, Lmiuix/appcompat/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 1005
    invoke-virtual {v0, v1, v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DialogPopup;)V

    .line 1007
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 1014
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1015
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1016
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1017
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public show(IIFF)V
    .locals 0

    .line 1022
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->show(II)V

    return-void
.end method
