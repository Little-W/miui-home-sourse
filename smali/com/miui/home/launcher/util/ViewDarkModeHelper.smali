.class public Lcom/miui/home/launcher/util/ViewDarkModeHelper;
.super Ljava/lang/Object;
.source "ViewDarkModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;
    }
.end annotation


# instance fields
.field private mIsDarkMode:Z

.field private final mListener:Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mIsDarkMode:Z

    .line 10
    iput-object p1, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mListener:Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;

    return-void
.end method

.method private static isDarkMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 22
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 15
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mIsDarkMode:Z

    if-eq v0, p1, :cond_0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mIsDarkMode:Z

    .line 17
    iget-object p1, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mListener:Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;

    iget-boolean v0, p0, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->mIsDarkMode:Z

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;->onDarkModeChanged(Z)V

    :cond_0
    return-void
.end method
