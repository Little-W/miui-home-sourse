.class public Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;
.super Lcom/miui/home/settings/DefaultHomeSettings;
.source "DefaultHomeWithJeejenSettings.java"


# instance fields
.field mContainer:Landroid/widget/LinearLayout;

.field mHeadLine:Landroid/widget/LinearLayout;

.field mIcon:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/settings/DefaultHomeSettings;-><init>()V

    return-void
.end method

.method private CheckToRemoveHeadLine()Z
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 79
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.jeejen.family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.jeejen.family.miui"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mHeadLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/settings/DefaultHomeSettings;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/miui/home/settings/DefaultHomeSettings;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00be

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->setContentView(I)V

    const p1, 0x7f0a0082

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00db

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mHeadLine:Landroid/widget/LinearLayout;

    .line 46
    invoke-direct {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->CheckToRemoveHeadLine()Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mHeadLine:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings$1;-><init>(Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0138

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mTitle:Landroid/widget/CheckedTextView;

    .line 58
    iget-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a00e4

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mIcon:Landroid/widget/ImageView;

    .line 60
    iget-object p1, p0, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->mIcon:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/settings/DefaultHomeWithJeejenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-static {v0, v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowDefaultLauncherSetting(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowDefaultLauncherSetting(Z)V

    :goto_0
    return-void
.end method
