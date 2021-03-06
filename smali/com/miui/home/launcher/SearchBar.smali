.class public Lcom/miui/home/launcher/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SearchBar.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field public static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/SearchBar;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

.field private mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBarWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lcom/miui/home/launcher/SearchBar$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/SearchBar$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBar;->WIDTH:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object p1, Lcom/miui/home/launcher/SearchBar;->WIDTH:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private init()V
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    return-object v0
.end method

.method public getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

    return-object v0
.end method

.method public getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public getSearchBarWidth()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return v0
.end method

.method public hideMenu()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isShowingMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isXiaoaiShow()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isXiaoaiShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a016f

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    const v0, 0x7f0a0170

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarDrawerLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 51
    iget p1, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->onWallpaperColorChanged()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSearchBarWidth(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return-void
.end method

.method public setSearchBarWidthAnim(I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
