.class Lmiui/external/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lmiui/external/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Lmiui/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmiui/external/widget/Spinner;


# direct methods
.method private constructor <init>(Lmiui/external/widget/Spinner;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/external/widget/Spinner;Lmiui/external/widget/Spinner$1;)V
    .locals 0

    .line 865
    invoke-direct {p0, p1}, Lmiui/external/widget/Spinner$DialogPopup;-><init>(Lmiui/external/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 872
    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 874
    iput-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

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

    .line 895
    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
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

    .line 880
    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

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

    .line 929
    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1, p2}, Lmiui/external/widget/Spinner;->setSelection(I)V

    .line 930
    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1}, Lmiui/external/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 931
    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lmiui/external/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 933
    :cond_0
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 938
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 948
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 968
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 943
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 900
    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 903
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v1}, Lmiui/external/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 905
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 907
    :cond_1
    iget-object v1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    .line 908
    invoke-virtual {v2}, Lmiui/external/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 907
    invoke-virtual {v0, v1, v2, p0}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiui/external/widget/Spinner$DialogPopup$1;

    invoke-direct {v1, p0}, Lmiui/external/widget/Spinner$DialogPopup$1;-><init>(Lmiui/external/widget/Spinner$DialogPopup;)V

    .line 909
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    .line 916
    iget-object v0, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 917
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 918
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 919
    iget-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup;->mPopup:Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public show(IIFF)V
    .locals 0

    .line 924
    invoke-virtual {p0, p1, p2}, Lmiui/external/widget/Spinner$DialogPopup;->show(II)V

    return-void
.end method
