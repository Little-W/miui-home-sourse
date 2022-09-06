.class public Lcom/miui/home/launcher/util/SystemUiController;
.super Ljava/lang/Object;
.source "SystemUiController.java"


# instance fields
.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/util/SystemUiController;->mWindow:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public updateUiState(I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 49
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, -0x11

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    or-int/lit16 v1, v1, 0x2000

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    and-int/lit16 v1, v1, -0x2001

    :cond_3
    :goto_1
    if-eq v1, v0, :cond_4

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method

.method public updateUiState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    return-void
.end method
