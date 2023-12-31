.class public Lcom/mi/globallauncher/local/FrequentUsedAppInfo;
.super Ljava/lang/Object;
.source "FrequentUsedAppInfo.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appTitle:Ljava/lang/String;

.field private isNewInstall:Z

.field private originalData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appTitle:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 19
    :cond_0
    iput-object p2, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    :goto_0
    iput-boolean p3, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->isNewInstall:Z

    .line 22
    iput-object p4, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->originalData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalData()Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->originalData:Ljava/lang/Object;

    return-object p0
.end method

.method public isNewInstall()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->isNewInstall:Z

    return p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->appTitle:Ljava/lang/String;

    return-void
.end method

.method public setNewInstall(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->isNewInstall:Z

    return-void
.end method

.method public setOriginalData(Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->originalData:Ljava/lang/Object;

    return-void
.end method
