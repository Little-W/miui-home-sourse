.class Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method static createConfigurationContext(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static generateConfigDelta_densityDpi(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq p0, v0, :cond_0

    iget p0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    return-void
.end method
