.class public abstract Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.super Ljava/lang/Object;
.source "NoWordLauncherElementAdapter.kt"

# interfaces
.implements Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoWordLauncherElementAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoWordLauncherElementAdapter.kt\ncom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter\n*L\n1#1,311:1\n*E\n"
.end annotation


# instance fields
.field private final mBindElement:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mDrawTitle:Ljava/lang/String;

.field private mDrawTitleRegionMaxWidth:F

.field private mDrawTitleX:F

.field private mDrawTitleY:F

.field private final mForegroundTextPaint:Landroid/text/TextPaint;

.field private mIcon:Landroid/view/View;

.field private mIconContainer:Landroid/view/View;

.field private mIsCanChangeCanvasAlphaWhenDrawIcon:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleMarginBottom:I

.field private mTitleMarginHorizontal:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    .line 43
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const-string v2, "LauncherModeController.getCurrentMode()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getShortcutTitleScale()F

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "workspace_icon_text_size"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 44
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060121

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 47
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mForegroundTextPaint:Landroid/text/TextPaint;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "mBindElement.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0705ca

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitleMarginBottom:I

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705cb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitleMarginHorizontal:I

    const-string p1, ""

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIsCanChangeCanvasAlphaWhenDrawIcon:Z

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;-><init>(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$initBindElementChild(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->initBindElementChild()V

    return-void
.end method

.method public static final synthetic access$setMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private final initBindElementChild()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->titleViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitle:Landroid/widget/TextView;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIcon:Landroid/view/View;

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->iconView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIcon:Landroid/view/View;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIconContainer:Landroid/view/View;

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->iconContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIconContainer:Landroid/view/View;

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method private final initDrawTitleConfig(Landroid/view/View;)V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "titleText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mDrawTitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoWordSettingHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIconContainer:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-gtz v1, :cond_2

    return-void

    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitleMarginHorizontal:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 200
    iget v4, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleRegionMaxWidth:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 201
    :cond_4
    iput v3, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleRegionMaxWidth:F

    .line 202
    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 204
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    .line 205
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_5
    move v3, v2

    .line 209
    :goto_3
    instance-of v4, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    if-eqz v4, :cond_6

    .line 210
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 212
    :cond_6
    instance-of v4, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_7

    .line 213
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 215
    :cond_7
    instance-of v4, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_9

    .line 217
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    const/16 v4, 0xf

    .line 218
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v0

    if-ne v0, v7, :cond_9

    :cond_8
    move v2, v6

    :cond_9
    :goto_4
    if-ne v2, v6, :cond_a

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int p1, v1, p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    int-to-float v0, v3

    add-float/2addr p1, v0

    .line 229
    iget v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mTitleMarginBottom:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mForegroundTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 233
    iget v2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleRegionMaxWidth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    .line 237
    iget-object v3, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mForegroundTextPaint:Landroid/text/TextPaint;

    .line 239
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 235
    invoke-static {v0, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleX:F

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mForegroundTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    int-to-float v1, v1

    sub-float/2addr v1, p1

    .line 245
    iget p1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleY:F

    :cond_c
    return-void
.end method

.method private final isHotseatsItemIcon()Z
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 177
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    .line 180
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/16 v0, -0x65

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 178
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/16 v0, -0x66

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 179
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/16 p0, -0x67

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-nez p0, :cond_2

    :cond_0
    const/4 p0, 0x1

    move v1, p0

    goto :goto_0

    .line 177
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.ItemInfo"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v1
.end method

.method private final isLauncherInEdit()Z
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSkipTitleDraw()Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final afterDrawChild(Landroid/graphics/Canvas;Z)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->iconView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIcon:Landroid/view/View;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIsCanChangeCanvasAlphaWhenDrawIcon:Z

    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->canDrawForegroundTitle()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 165
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->initDrawTitleConfig(Landroid/view/View;)V

    .line 166
    iget-object p2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitle:Ljava/lang/String;

    iget v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleX:F

    iget v1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mDrawTitleY:F

    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mForegroundTextPaint:Landroid/text/TextPaint;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public changeViewAlpha(Z)V
    .locals 1

    .line 252
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;-><init>(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getMBindElement()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    return-object p0
.end method

.method public final invalidateBindElement()V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final invalidateBindElementWhenLauncherInEditMode()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    return-object p0
.end method

.method public isCanChangeAlphaWhenEditModeChange()Z
    .locals 1

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isLauncherInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isHotseatsItemIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIsCanChangeCanvasAlphaWhenDrawIcon:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBindElementFinishInflate()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->initBindElementChild()V

    return-void
.end method

.method public final onEditModeChange(Z)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isCanChangeAlphaWhenEditModeChange()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->changeViewAlpha(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElement()V

    return-void
.end method

.method public final preDrawChild(Landroid/view/View;)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isSkipTitleDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->titleViewContainerId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/16 p0, -0x3e8

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final setCanChangeCanvasAlphaWhenDrawIcon(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mIsCanChangeCanvasAlphaWhenDrawIcon:Z

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isCanChangeAlphaWhenEditModeChange()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->changeViewAlpha(Z)V

    return-void
.end method
