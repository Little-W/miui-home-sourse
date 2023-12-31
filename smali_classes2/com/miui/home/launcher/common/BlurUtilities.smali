.class public Lcom/miui/home/launcher/common/BlurUtilities;
.super Ljava/lang/Object;
.source "BlurUtilities.java"


# static fields
.field private static IS_BACKGROUND_BLUR_ENABLED:Z

.field private static final IS_BACKGROUND_BLUR_SUPPORTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBackgroundBlurSupported()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_SUPPORTED:Z

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    return-void
.end method

.method public static calFolderIconRoundRectRadius(Landroid/content/Context;Landroid/widget/ImageView;)I
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static clearAllBlur(Landroid/view/View;)V
    .locals 1

    .line 142
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 144
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 145
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 146
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    return-void
.end method

.method public static disableMiBackgroundContainBelow(Landroid/view/View;Z)V
    .locals 7

    .line 89
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "disableMiBackgroundContainBelow"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I
    .locals 0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->calFolderIconRoundRectRadius(Landroid/content/Context;Landroid/widget/ImageView;)I

    move-result p0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static isBackgroundBlurSupported()Z
    .locals 10

    const/4 v0, 0x0

    .line 126
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "getBoolean"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v2, "persist.sys.background_blur_supported"

    aput-object v2, v8, v0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v9

    .line 126
    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isBlurSupported()Z
    .locals 1

    .line 152
    sget-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetBlurColor(Landroid/view/View;)V
    .locals 6

    .line 99
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "clearMiBackgroundBlendColor"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBackgroundBlurEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 137
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "background_blur_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/miui/home/launcher/common/BlurUtilities;->IS_BACKGROUND_BLUR_ENABLED:Z

    return-void
.end method

.method public static setBlurColor(Landroid/view/View;II)V
    .locals 8

    .line 94
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v6

    const-string v2, "addMiBackgroundBlendColor"

    move-object v1, p0

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setBlurRadius(Landroid/view/View;I)V
    .locals 7

    if-ltz p1, :cond_1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const-class v1, Landroid/view/View;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    const-string v3, "setMiBackgroundBlurRadius"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMiBackgroundBlurRadius error radius is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hashcode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.BlurUtilities"

    .line 74
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setBlurRoundRect(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 115
    new-instance v0, Lcom/miui/home/launcher/common/BlurUtilities$2;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities$2;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static setBlurRoundRect(Landroid/view/View;IIIII)V
    .locals 7

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 105
    new-instance v0, Lcom/miui/home/launcher/common/BlurUtilities$1;

    move-object v1, v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/common/BlurUtilities$1;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static setContainerBlur(Landroid/view/View;IZIIIII)V
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 173
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 175
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 177
    :cond_0
    invoke-static {p0, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    invoke-static {p0, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p0, p6, p7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public static setElementBlur(Landroid/view/View;IIZIIIIIIII)V
    .locals 0

    if-nez p3, :cond_0

    .line 158
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 160
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 161
    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;I)V

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-static {p0, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 164
    invoke-static {p0, p8, p9}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {p0, p6, p7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 167
    invoke-static {p0, p10, p11}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public static setFolderIconBlur(Landroid/view/View;IIIII)V
    .locals 7

    .line 193
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 194
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0, p2, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {p0, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    .line 200
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v4

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int v5, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int v6, p2, v4

    move-object v1, p0

    move v2, p1

    move v3, v4

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIII)V

    return-void
.end method

.method public static setPassWindowBlurEnable(Landroid/view/View;Z)V
    .locals 8

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewBlur:  view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.BlurUtilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-class v2, Landroid/view/View;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v6, v3

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v3

    const-string v4, "setPassWindowBlurEnabled"

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewBackgroundBlur(Landroid/view/View;I)V
    .locals 7

    .line 63
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setMiBackgroundBlurMode"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewBlur(Landroid/view/View;I)V
    .locals 7

    .line 68
    const-class v0, Landroid/view/View;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setMiViewBlurMode"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method
