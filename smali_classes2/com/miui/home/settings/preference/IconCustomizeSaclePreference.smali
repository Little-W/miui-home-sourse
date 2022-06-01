.class public final Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;
.super Landroidx/preference/Preference;
.source "IconCustomizeSaclePreference.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;
    }
.end annotation


# instance fields
.field private mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

.field private mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d007c

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getCurrentSetIconSizeValue()Ljava/lang/Float;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "IconCustomizeSaclePreference"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const v0, 0x7f0a023e

    .line 28
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    check-cast v1, Lcom/miui/home/settings/IconSizeSeekBar;

    iput-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    .line 29
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/miui/home/settings/IconSizeSeekBar;->setBackgroundColor(I)V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/IconSizeSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_3
    return-void

    .line 28
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.home.settings.IconSizeSeekBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;->onIconSizeChange(Ljava/lang/Float;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;

    return-void
.end method
