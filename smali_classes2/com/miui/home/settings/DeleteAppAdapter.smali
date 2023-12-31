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
    value = "SMAP\nDeleteAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteAppAdapter.kt\ncom/miui/home/settings/DeleteAppAdapter\n*L\n1#1,145:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/settings/DeleteAppAdapter$Companion;


# instance fields
.field private final DATA_MIUI_APP_DIR:Ljava/lang/String;

.field private final TAG$1:Ljava/lang/String;

.field private final VIEW_TYPE_EMPTY$1:I

.field private final VIEW_TYPE_ITEM$1:I

.field private final mContext:Landroid/app/Activity;

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

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    const-string p1, "EmptyAdapter"

    .line 28
    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->TAG$1:Ljava/lang/String;

    const-string p1, "/data/miui/app"

    .line 29
    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->DATA_MIUI_APP_DIR:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_ITEM$1:I

    return-void
.end method

.method public static final synthetic access$getDATA_MIUI_APP_DIR$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->DATA_MIUI_APP_DIR:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->TAG$1:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$installAppByPackageName(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->installAppByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$installAppByPackagePath(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/DeleteAppAdapter;->installAppByPackagePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final installAppByPackageName(Ljava/lang/String;)V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private final installAppByPackagePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "apk_path"

    .line 118
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_EMPTY$1:I

    goto :goto_0

    .line 131
    :cond_0
    iget p0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_ITEM$1:I

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    instance-of v0, p1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/DeleteAppInfo;

    .line 54
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

    const/4 v4, 0x0

    const-string v5, "android.resource"

    invoke-static {v1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/common/Utilities;->getStringForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getIconResource()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getIconResource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v1

    const/4 v4, 0x1

    const v5, 0x7f06009a

    if-ne v1, v4, :cond_2

    .line 62
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f11047b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    const v4, 0x7f0802ea

    if-ne v1, v3, :cond_4

    .line 66
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110393

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v5, Landroid/content/Context;

    const v6, 0x7f0605ee

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 69
    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const v4, 0x7f06009c

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 68
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11025b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v3, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 75
    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mContext:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const v4, 0x7f06009b

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    invoke-virtual {v1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_0
    check-cast p1, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->getInstallBut()Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;-><init>(Lcom/miui/home/settings/DeleteAppAdapter;Lcom/miui/home/settings/DeleteAppInfo;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 74
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->VIEW_TYPE_EMPTY$1:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0055

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 45
    new-instance p1, Lcom/miui/home/settings/DeleteAppAdapter$onCreateViewHolder$1;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/settings/DeleteAppAdapter$onCreateViewHolder$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0057

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
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

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/settings/DeleteAppAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
