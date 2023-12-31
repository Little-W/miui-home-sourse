.class public Lcom/miui/home/launcher/ItemIconTitleContainer;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ItemIconTitleContainer.java"


# instance fields
.field private mIsOnAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIconTitleContainer;->mIsOnAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIconTitleContainer;->mIsOnAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIconTitleContainer;->mIsOnAnimation:Z

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIconTitleContainer;->mIsOnAnimation:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setIsOnAnimation(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIconTitleContainer;->mIsOnAnimation:Z

    return-void
.end method
