.class public final Lcom/miui/home/settings/HideAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HideAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/HideAppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/settings/HideAppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllHideAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMRemoveTipDialog$p(Lcom/miui/home/settings/HideAppAdapter;)Lmiui/home/lib/dialog/AlertDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;

    return-object p0
.end method

.method public static final synthetic access$setMRemoveTipDialog$p(Lcom/miui/home/settings/HideAppAdapter;Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;

    return-void
.end method


# virtual methods
.method public final dismissDialog()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiui/home/lib/dialog/AlertDialog;

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "mAllHideAppList[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    const-string v2, "appInfo.toComponentKey()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    new-instance v0, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1;-><init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/HideAppAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "mLayoutInflater.inflate(\u2026list_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;-><init>(Lcom/miui/home/settings/HideAppAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/settings/HideAppAdapter;->notifyDataSetChanged()V

    return-void
.end method
