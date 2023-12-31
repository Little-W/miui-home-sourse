.class public Lcom/miui/home/settings/preference/DesktopModePreference;
.super Landroidx/preference/Preference;
.source "DesktopModePreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;
    }
.end annotation


# static fields
.field private static mSupportJeejen:Z


# instance fields
.field private isFirstBind:Z

.field private mClassicModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mDesktop:Lmiuix/visual/check/VisualCheckBox;

.field private mDrawer:Lmiuix/visual/check/VisualCheckBox;

.field private mDrawerAnimationName:Ljava/lang/String;

.field private mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mEndIsDrawer:Z

.field private mJeejen:Lmiuix/visual/check/VisualCheckBox;

.field private mJeejenAnimationName:Ljava/lang/String;

.field private mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mMode:I

.field private mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

.field private mStartIsDrawer:Z

.field private mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->isFirstBind:Z

    const p1, 0x7f0d0067

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/preference/DesktopModePreference;Landroid/view/View;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->calModeVisualWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    return-object p0
.end method

.method private calModeVisualWidth(Landroid/view/View;)I
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p0, v0

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0705bc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 100
    :cond_0
    sget-boolean p1, Lcom/miui/home/settings/preference/DesktopModePreference;->mSupportJeejen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    div-int/2addr p0, p1

    :goto_1
    return p0
.end method

.method private initAnimation()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    sget-boolean v0, Lcom/miui/home/settings/preference/DesktopModePreference;->mSupportJeejen:Z

    if-eqz v0, :cond_0

    const-string v0, "drawer_mode_support_jeejen_animation.json"

    goto :goto_0

    :cond_0
    const-string v0, "drawer_mode_animation.json"

    .line 208
    :goto_0
    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerAnimationName:Ljava/lang/String;

    const-string v0, "jeejen_mode_animation.json"

    .line 209
    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenAnimationName:Ljava/lang/String;

    .line 210
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iget-object v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenAnimationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "drawer_mode_animation_fold_land.json"

    .line 214
    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerAnimationName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "drawer_mode_animation_fold_large.json"

    .line 216
    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerAnimationName:Ljava/lang/String;

    .line 218
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerAnimationName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private setAnimation(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->cancelAnimation()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setProgress(F)V

    .line 160
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->cancelAnimation()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setProgress(F)V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_3

    .line 173
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenAnimationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAnimation(Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->playAnimation()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerAnimationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAnimation(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->playAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setChecked(I)V
    .locals 3

    .line 185
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setAnimation(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 199
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 200
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 194
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 195
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 189
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 190
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/miui/home/settings/preference/DesktopModePreference;->mSupportJeejen:Z

    .line 66
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lmiuix/visual/check/VisualCheckGroup;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    const v0, 0x7f0a0111

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    const v0, 0x7f0a012e

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    const v0, 0x7f0a01e0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    .line 70
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    new-instance v1, Lcom/miui/home/settings/preference/DesktopModePreference$1;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/preference/DesktopModePreference$1;-><init>(Lcom/miui/home/settings/preference/DesktopModePreference;)V

    invoke-virtual {v0, v1}, Lmiuix/visual/check/VisualCheckGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0a00cc

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mClassicModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v0, 0x7f0a0130

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v0, 0x7f0a01e1

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejenModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 84
    sget-boolean v0, Lcom/miui/home/settings/preference/DesktopModePreference;->mSupportJeejen:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mClassicModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageResource(I)V

    .line 86
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckGroup;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->isFirstBind:Z

    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->initAnimation()V

    .line 90
    iget p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setChecked(I)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->isFirstBind:Z

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    .line 144
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 145
    iput v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 147
    iput v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    goto :goto_1

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x2

    .line 149
    iput p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    .line 151
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

    if-eqz p1, :cond_4

    .line 152
    iget p2, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    invoke-interface {p1, p2}, Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;->OnDesktopModeTemporaryChange(I)V

    .line 154
    :cond_4
    iget p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setAnimation(I)V

    return-void
.end method

.method public setDesktopMode()V
    .locals 7

    .line 113
    iget-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mStartIsDrawer:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    if-eq v0, v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setDrawerModeEnable(Landroid/content/Context;Z)V

    .line 115
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setHasChangedDrawerMode(Z)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    if-ne v0, v2, :cond_3

    .line 118
    iget-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mStartIsDrawer:Z

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v3, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setDrawerModeEnable(Landroid/content/Context;Z)V

    :cond_1
    const-string v0, "DesktopModePreference"

    const-string v1, "start sending jeejen broadcast..."

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getJeejenReceiverInfo()Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getJeejenBroadcastIntent()Landroid/content/Intent;

    move-result-object v2

    .line 125
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.xiaomi.misettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 127
    invoke-static {v3}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setJeejenBroadcastSend(Z)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jeejen broadcast is send to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "elderly_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v1

    const-string v2, "previous_font"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    :cond_3
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    return-void
.end method

.method public setInitValue(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    iput-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mStartIsDrawer:Z

    .line 106
    iput p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    .line 107
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mJeejen:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_1

    .line 108
    iget p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mMode:I

    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setChecked(I)V

    :cond_1
    return-void
.end method

.method public setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

    return-void
.end method
