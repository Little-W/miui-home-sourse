.class public final Lcom/miui/home/settings/DeleteAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DeleteAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;,
        Lcom/miui/home/settings/DeleteAppAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteAppAdapter.kt\ncom/miui/home/settings/DeleteAppAdapter\n*L\n1#1,127:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/settings/DeleteAppAdapter$Companion;


# instance fields
.field private final TAG$1:Ljava/lang/String;

.field private final VIEW_TYPE_EMPTY$1:I

.field private final VIEW_TYPE_ITEM$1:I

.field private final mContext:Landroid/content/Context;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/settings/DeleteAppAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/settings/DeleteAppAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/settings/DeleteAppAdapter;->Companion:Lcom/miui/home/settings/DeleteAppAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    const-string p1, "EmptyAdapter"

    .line 27
    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->TAG$1:Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_ITEM$1:I

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->TAG$1:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$installAppByPackageName(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->installAppByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method private final installAppByPackageName(Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_EMPTY$1:I

    goto :goto_0

    .line 113
    :cond_0
    iget p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_ITEM$1:I

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v0, p1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/DeleteAppInfo;

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appInfo.title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "android.resource"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/common/Utilities;->getStringForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getIconResource()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getIconResource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v1

    const/4 v4, 0x1

    const v5, 0x7f060094

    if-ne v1, v4, :cond_2

    .line 60
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100353

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v1

    const v2, 0x7f08018d

    if-ne v1, v3, :cond_4

    .line 64
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10029c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f060391

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 67
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060096

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 68
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 66
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1001f5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 73
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060095

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    check-cast p1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;-><init>(Lcom/miui/home/settings/DeleteAppAdapter;Lcom/miui/home/settings/DeleteAppInfo;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 72
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_EMPTY$1:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0033

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/miui/home/settings/DeleteAppAdapter$onCreateViewHolder$1;

    invoke-direct {p2, p1, p1}, Lcom/miui/home/settings/DeleteAppAdapter$onCreateViewHolder$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0035

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;-><init>(Lcom/miui/home/settings/DeleteAppAdapter;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/settings/DeleteAppAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
