.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

.field private mBack:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field private mBackgroundAlpha:I

.field private mCategoryId:I

.field private mCategoryName:Ljava/lang/String;

.field private mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

.field private mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSave:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field private mTitleClear:Landroid/widget/ImageView;

.field private mTitleEditor:Landroid/widget/EditText;

.field private mTitleLine:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    return-void
.end method

.method private hideKeyboard()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private initTitleEditorActionListener()V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    sget-object v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$sBSFOSWJZm8xU0uOVbT1gmunPrQ;->INSTANCE:Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$sBSFOSWJZm8xU0uOVbT1gmunPrQ;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic lambda$initTitleEditorActionListener$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "actionId :+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCategorySelectFragme"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event :+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private updatePoolSize()V
    .locals 2

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    .line 292
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v0, 0x2

    .line 293
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v0, 0x3

    .line 294
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private updateUIColorMode()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTextClearIconResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputHintColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleLine:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputLineColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onBack()V

    .line 181
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideKeyboard()V

    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public checkList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 247
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->checkList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getCategoryId()I
    .locals 0

    .line 263
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    return p0
.end method

.method public getSelectedApps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getSelectedApps()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onBackPressed$4$AppCategorySelectFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->save()V

    return-void
.end method

.method public synthetic lambda$onBackPressed$5$AppCategorySelectFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$AppCategorySelectFragment(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$AppCategorySelectFragment(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$AppCategorySelectFragment(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->save()V

    return-void
.end method

.method onBackPressed()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    .line 299
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getAddApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getRemoveApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->back()V

    goto :goto_1

    .line 300
    :cond_1
    :goto_0
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100df

    .line 301
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100e1

    new-instance v2, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$CSExbwl9CONCQJjmF6i97HqcvKs;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$CSExbwl9CONCQJjmF6i97HqcvKs;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    .line 302
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100e0

    new-instance v2, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$h5Ne1ixRHC3ilLeZoazDc6RVg9w;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$h5Ne1ixRHC3ilLeZoazDc6RVg9w;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    .line 303
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 102
    new-instance p1, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 107
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_2
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_4

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    goto :goto_3

    :cond_5
    const/16 p1, 0xff

    :goto_3
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/AllCategoryList;->getCategoryName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    .line 115
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsStore;Z)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 116
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 120
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 121
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d007f

    const/4 p3, 0x0

    .line 128
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->stopLocked()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mLoaderTask:Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onDestroy()V

    .line 217
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenOrientationChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenSizeChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBackgroundAlpha:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateUIColorMode()V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updatePoolSize()V

    .line 269
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0074

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 138
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f0a0139

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    const p2, 0x7f0a00a9

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    .line 142
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleClear:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$K0vomCpBHG9Q-A6wvYJ6V2q_seg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$K0vomCpBHG9Q-A6wvYJ6V2q_seg;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00a7

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    const p2, 0x7f0a00aa

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 146
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mBack:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$uqq2-92gkLmajjufVnNRDUbobGM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$uqq2-92gkLmajjufVnNRDUbobGM;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mSave:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$xmTXLQQ9p10wtO05TJcXsUAQSnk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectFragment$xmTXLQQ9p10wtO05TJcXsUAQSnk;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    .line 149
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a013f

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleLine:Landroid/view/View;

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateUIColorMode()V

    .line 152
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updatePoolSize()V

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->initTitleEditorActionListener()V

    return-void
.end method

.method public refreshSpanCount()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->refreshSpanCount()V

    .line 284
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method public save()V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 186
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1100dc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getSelectedApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onDelete(ILjava/util/Collection;)V

    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/AllCategoryList;->isCategoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1100db

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getAddApps()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getRemoveApps()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;->onSave(ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 200
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->hideKeyboard()V

    return-void
.end method

.method public setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mListener:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;

    return-void
.end method

.method public updateCategory(I)V
    .locals 2

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/AllCategoryList;->getCategoryName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mTitleEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_3

    .line 85
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    return-void
.end method
