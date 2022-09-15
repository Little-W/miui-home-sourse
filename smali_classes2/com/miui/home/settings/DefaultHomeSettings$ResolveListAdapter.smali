.class Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/DefaultHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPackgeManager:Landroid/content/pm/PackageManager;

.field private final mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/settings/DefaultHomeSettings;


# direct methods
.method public constructor <init>(Lcom/miui/home/settings/DefaultHomeSettings;Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->this$0:Lcom/miui/home/settings/DefaultHomeSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    const-string p1, "layout_inflater"

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 152
    iput-object p4, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 154
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 156
    new-instance p1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object p2, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    :cond_0
    iput-object p3, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getItem(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 179
    iget-object p2, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0159

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const p3, 0x7f0a0288

    .line 183
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 184
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {p1, v0}, Lcom/miui/home/settings/DefaultHomeSettings;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const v0, 0x7f0a019a

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0248

    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 188
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const p1, 0x7f0a02ae

    .line 191
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 192
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public setCurrent(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method
