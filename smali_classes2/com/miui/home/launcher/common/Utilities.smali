.class public Lcom/miui/home/launcher/common/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/Utilities$BitmapUtils;
    }
.end annotation


# static fields
.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_MIUI_10:Z

.field public static final ATLEAST_MIUI_11:Z

.field public static final ATLEAST_MIUI_12:Z

.field public static final ATLEAST_MIUI_12_5:Z

.field public static final ATLEAST_MIUI_12_5_PLUS:Z

.field public static final ATLEAST_MIUI_13:Z

.field public static final ATLEAST_NOUGAT:Z

.field public static final ATLEAST_NOUGAT_MR1:Z

.field public static final ATLEAST_OREO:Z

.field public static final ATLEAST_OREO_MR1:Z

.field public static final ATLEAST_P:Z

.field public static final ATLEAST_Q:Z

.field public static final ATLEAST_R:Z

.field public static final ATLEAST_S:Z

.field public static final ATLEAST_T:Z

.field public static final IS_MIUI_10:Z

.field public static final IS_MIUI_11:Z

.field public static final IS_MIUI_12:Z

.field public static final IS_MIUI_12_5:Z

.field public static final IS_MIUI_13:Z

.field public static LOW_MEMORY_DEVICES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIUI_BIG_VERSION:Ljava/lang/String;

.field public static MIUI_VERSION:F = 0.0f

.field public static final MIUI_VERSION_CODE:I

.field private static final NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_SUPPORT_LOCK_ON_GLOBAL_DEVICE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIncompatibleAppList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMetrics:Landroid/util/DisplayMetrics;

.field private static sBoostGPUInstance:Ljava/lang/Object; = null

.field private static sBoostMethod:Ljava/lang/reflect/Method; = null

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sDefaultAnimatorInterPolator:Landroid/view/animation/Interpolator; = null

.field private static sHasShowScreenLockedToast:Z = false

.field private static sIconDarkShadowPaint:Landroid/graphics/Paint; = null

.field private static sIconShadowBlurPaint:Landroid/graphics/Paint; = null

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static sIsStaging:Z = false

.field private static sMQueueField:Ljava/lang/reflect/Field;

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static sNotch:Z

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPoint:[F

.field private static sQetQueueMethod:Ljava/lang/reflect/Method;

.field private static sShortcutContentPadding:Landroid/graphics/Rect;

.field private static sStatusBarHeight:I

.field private static sThreadLocalField:Ljava/lang/reflect/Field;

.field private static sThreadLocalSetMethod:Ljava/lang/reflect/Method;

.field static sTmpValue:Landroid/util/TypedValue;

.field private static sToastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 160
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    .line 162
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_S:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    .line 164
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_R:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_R:Z

    .line 166
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_Q:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    .line 168
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_P:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    .line 170
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO_MR1:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO_MR1:Z

    .line 172
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    .line 174
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_NOUGAT_MR1:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT_MR1:Z

    .line 176
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_NOUGAT:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    .line 178
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_MARSHMALLOW:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 180
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_LOLLIPOP_MR1:Z

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 182
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getMiuiVersionCode()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    .line 202
    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_13:Z

    .line 203
    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    const/16 v4, 0xb

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_12_5:Z

    .line 204
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v5, "V12"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_12:Z

    .line 205
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v5, "V11"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_11:Z

    .line 206
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v5, "V10"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 212
    :try_start_0
    sget-object v7, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v8, "[Vv]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 214
    :catch_0
    sget-boolean v7, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_13:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x41500000    # 13.0f

    .line 215
    sput v7, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    goto :goto_2

    .line 216
    :cond_2
    sget-boolean v7, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_12_5:Z

    if-eqz v7, :cond_3

    const/high16 v7, 0x41480000    # 12.5f

    .line 217
    sput v7, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    goto :goto_2

    .line 218
    :cond_3
    sget-boolean v7, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_12:Z

    if-eqz v7, :cond_4

    .line 219
    sput v6, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    goto :goto_2

    .line 220
    :cond_4
    sget-boolean v7, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_11:Z

    if-eqz v7, :cond_5

    .line 221
    sput v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    goto :goto_2

    .line 223
    :cond_5
    sput v5, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    .line 231
    :goto_2
    sget v7, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    if-lt v7, v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_13:Z

    .line 233
    sget v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    const/16 v7, 0xc

    if-lt v1, v7, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    sput-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5_PLUS:Z

    .line 235
    sget v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION_CODE:I

    if-lt v1, v4, :cond_8

    move v1, v2

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    sput-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    .line 237
    sget v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_9

    move v1, v2

    goto :goto_6

    :cond_9
    move v1, v3

    :goto_6
    sput-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    .line 239
    sget v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v3

    :goto_7
    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_11:Z

    .line 241
    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_b

    move v0, v2

    goto :goto_8

    :cond_b
    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_10:Z

    .line 246
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/miuihome_staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/Utilities;->sIsStaging:Z

    .line 247
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    .line 486
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    .line 496
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    .line 507
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sDefaultAnimatorInterPolator:Landroid/view/animation/Interpolator;

    .line 795
    sput-boolean v3, Lcom/miui/home/launcher/common/Utilities;->sHasShowScreenLockedToast:Z

    .line 933
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sBoostGPUInstance:Ljava/lang/Object;

    .line 934
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sBoostMethod:Ljava/lang/reflect/Method;

    :try_start_1
    const-string v1, "android.util.BoostFramework"

    .line 938
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "perfLockAcquire"

    .line 939
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, [I

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/miui/home/launcher/common/Utilities;->sBoostMethod:Ljava/lang/reflect/Method;

    .line 940
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sBoostGPUInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v1

    const-string v4, "Launcher.Utilities"

    const-string v6, "boost reflaction error"

    .line 942
    invoke-static {v4, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    :goto_9
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sToastRef:Ljava/lang/ref/WeakReference;

    .line 1460
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    const/4 v1, -0x1

    .line 1505
    sput v1, Lcom/miui/home/launcher/common/Utilities;->sStatusBarHeight:I

    const-string v1, "ro.miui.notch"

    .line 1517
    invoke-static {v1, v3}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_c

    goto :goto_a

    :cond_c
    move v2, v3

    :goto_a
    sput-boolean v2, Lcom/miui/home/launcher/common/Utilities;->sNotch:Z

    .line 2071
    new-array v1, v5, [F

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    .line 2072
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    .line 2073
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    const-string v1, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    .line 2098
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 2260
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sThreadLocalField:Ljava/lang/reflect/Field;

    .line 2261
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sQetQueueMethod:Ljava/lang/reflect/Method;

    .line 2262
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sThreadLocalSetMethod:Ljava/lang/reflect/Method;

    .line 2263
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sMQueueField:Ljava/lang/reflect/Field;

    .line 2355
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    .line 2358
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "pyxis"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2359
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "wayne"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2360
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "laurus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2361
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "ginkgo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2362
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "lavender"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2363
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "violet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2364
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "platina"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2365
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "sirius"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2366
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "grus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2367
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SIMPLE_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    sget-object v1, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2370
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    .line 2373
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "cmi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2374
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "umi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2375
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "phoenix"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2376
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->USE_SMOOTH_ANIMATION_EFFECT_DEVICES:Ljava/util/Set;

    const-string v1, "picasso"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2383
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->LOW_MEMORY_DEVICES:Ljava/util/Set;

    .line 2386
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->LOW_MEMORY_DEVICES:Ljava/util/Set;

    sget-object v1, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2401
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    .line 2404
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    const-string v1, "67c0ecaf5a1b782b11146e9fbe80f016"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2405
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    const-string v1, "b29a3099fe2e30ae7b6e580c6ac6482c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2406
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    const-string v1, "3f24e567591e9cbab2a7d2f1f748a1d4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2407
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    const-string v1, "29595ff798ec0f3b4e0408c9ccc70bfb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2410
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_ON_GLOBAL_DEVICE_SET:Ljava/util/Set;

    .line 2413
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_ON_GLOBAL_DEVICE_SET:Ljava/util/Set;

    const-string v1, "74c9687238a05332b9c4e1129340f281"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2414
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_ON_GLOBAL_DEVICE_SET:Ljava/util/Set;

    const-string v1, "06cfcadd99933d42bf1f7ba542f799b9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 151
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sToastRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 151
    sput-object p0, Lcom/miui/home/launcher/common/Utilities;->sToastRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 1498
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1499
    check-cast p1, Landroid/widget/TextView;

    .line 1500
    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V
    .locals 2

    .line 1480
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f06012e

    move v1, p3

    move p3, p2

    move p2, v1

    goto :goto_0

    :cond_0
    const p3, 0x7f06012d

    .line 1488
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1490
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1491
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_1

    .line 1493
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getIconTitleShadowColor()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_1
    return-void
.end method

.method private static addDataToIntent(Landroid/content/Intent;Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .locals 1

    .line 1295
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p1, p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static addTwoColor(II)I
    .locals 8

    .line 910
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 911
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float v3, v0, v2

    mul-float v4, v0, v2

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 913
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 914
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    mul-float/2addr v6, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    div-float/2addr v6, v3

    float-to-int v6, v6

    .line 915
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    mul-float/2addr p0, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    div-float/2addr p0, v3

    float-to-int p0, p0

    .line 912
    invoke-static {v1, v4, v6, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static announceForAccessibility(I)V
    .locals 1

    .line 1420
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    new-instance v0, Lcom/miui/home/launcher/common/Utilities$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/Utilities$2;-><init>(I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method public static announceForAccessibility(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1411
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static asyncGetIncompatibleDialogIntent(Ljava/lang/String;Lcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/common/ResultRunnable<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1112
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$_nbEZOOUaVPm2qYHw0yX7FWpP2E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$_nbEZOOUaVPm2qYHw0yX7FWpP2E;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$lDvxxaf0yFFhl2fYPUx1KeuLyZM;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$lDvxxaf0yFFhl2fYPUx1KeuLyZM;-><init>(Lcom/miui/home/launcher/common/ResultRunnable;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 0

    .line 2057
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static boundToRange(III)I
    .locals 0

    .line 2050
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static boundToRangeAnimatorParams(F)F
    .locals 2

    const v0, -0x800001

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 2447
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(FFF)F

    move-result p0

    return p0
.end method

.method public static boundToRangeAnimatorParams(FFF)F
    .locals 1

    .line 2451
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static calcDistance(FF)I
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 1569
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static calcProgress(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 2292
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2293
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 2296
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 2297
    div-int/lit8 p0, p0, 0x2

    .line 2300
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p2, :cond_1

    div-int v2, p0, v1

    if-lt v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static canLockTaskView()Z
    .locals 1

    .line 2398
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canShowTaskViewMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceSupportTaskViewMenuLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canShowTaskViewMenu()Z
    .locals 1

    .line 2394
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static cancelImprovedToast()V
    .locals 1

    .line 1245
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sToastRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    return-void
.end method

.method public static cancelMiuiThumbnailAnimation(Landroid/content/Context;)V
    .locals 7

    .line 1930
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 1934
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    .line 1935
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 1936
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1937
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v1, v3, :cond_1

    .line 1939
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "cancelMiuiThumbnailAnimation"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1941
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1944
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "cancelMiuiThumbnailAnimation"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1946
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "Launcher.Utilities"

    const-string v0, "cancelMiuiThumbnailAnimation success"

    .line 1948
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 1950
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static cancelTouchEvent(Landroid/view/View;)V
    .locals 8

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 1777
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1778
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1779
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public static captureSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2545
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2549
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2550
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static changeDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 9

    const-string v0, "Launcher.Utilities"

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change default home from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1716
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 1718
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1719
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1721
    new-array v2, v1, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1725
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1726
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v2, v3

    .line 1728
    iget v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v6, v4, :cond_0

    iget v4, v5, Landroid/content/pm/ResolveInfo;->match:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1731
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1733
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 1734
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 1735
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 1736
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0, p1, v4, v2, p2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static changeDrawableRadius(Landroid/graphics/drawable/Drawable;FF)V
    .locals 3

    .line 1612
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1613
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->changeGradientDrawableRadius(Landroid/graphics/drawable/GradientDrawable;FF)V

    goto :goto_1

    .line 1614
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_2

    .line 1615
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    .line 1616
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_2

    .line 1617
    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v0, 0x0

    .line 1618
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1619
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1620
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 1621
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->changeGradientDrawableRadius(Landroid/graphics/drawable/GradientDrawable;FF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static changeGradientDrawableRadius(Landroid/graphics/drawable/GradientDrawable;FF)V
    .locals 2

    const/16 v0, 0x8

    .line 1629
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x5

    aput p2, v0, p1

    const/4 p1, 0x6

    aput p2, v0, p1

    const/4 p1, 0x7

    aput p2, v0, p1

    .line 1630
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method public static checkFloat(F)Z
    .locals 3

    .line 2459
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2461
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeFileSafely(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 754
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 756
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeForceDarkAllowed(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Launcher.Utilities"

    const-string v0, "closeForceDarkAllowed: view is null, return"

    .line 2571
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2574
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2575
    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :cond_1
    return-void
.end method

.method public static containsSimplifiedChinese(Ljava/lang/String;)Z
    .locals 4

    .line 2309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2312
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 2313
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static convertIntArrayToString([I)Ljava/lang/String;
    .locals 3

    .line 1255
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1256
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1257
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1258
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 1259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 581
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 584
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static covertStringToIntArray(Ljava/lang/String;)[I
    .locals 4

    .line 1266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ","

    .line 1269
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1270
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 1272
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1273
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const-string p0, "Launcher.Utilities"

    const-string v0, "Fail in covertStringToIntArray"

    .line 1277
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 763
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 765
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 0

    .line 773
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.Utilities"

    .line 777
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Launcher.Utilities"

    .line 775
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2321
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, ", "

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 264
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 267
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v2

    .line 272
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_2

    .line 273
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/PaintDrawable;

    .line 274
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 275
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 278
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v3, :cond_5

    if-lez v4, :cond_5

    if-lt v1, v3, :cond_3

    if-ge v2, v4, :cond_5

    :cond_3
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    if-le v3, v4, :cond_4

    int-to-float v2, v1

    div-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_0

    :cond_4
    if-le v4, v3, :cond_5

    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 294
    :cond_5
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 296
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 297
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 300
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 302
    sget-object v7, Lcom/miui/home/launcher/common/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v1, v5

    add-int/2addr v2, v6

    .line 303
    invoke-virtual {p0, v5, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 305
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 308
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static decodeSampledBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2266
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2271
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 2272
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2273
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2274
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2277
    invoke-static {v2, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2279
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 2284
    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2285
    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2286
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    .line 589
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 593
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static dp2px(F)I
    .locals 2

    .line 444
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static drawable2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1070
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1071
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 1075
    :cond_0
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1077
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 1084
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1080
    :goto_0
    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1085
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1086
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float p0, p0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr p0, v4

    int-to-float v5, v0

    div-float/2addr p0, v5

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float v4, v1

    div-float/2addr p1, v4

    .line 1087
    invoke-virtual {v3, p0, p1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 p0, 0x0

    .line 1088
    invoke-virtual {p2, p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1089
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1090
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static enableAutoFillEmpty()Z
    .locals 1

    .line 809
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isAutoFillEmptyEnable()Z

    move-result v0

    return v0
.end method

.method public static equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1766
    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static extract(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    .line 556
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 559
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 560
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lmiuix/core/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 561
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 571
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    if-nez v1, :cond_2

    .line 564
    :try_start_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 571
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 574
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return p0

    .line 567
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    .line 571
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 574
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v1, :cond_4

    .line 571
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 574
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 576
    :cond_4
    :goto_4
    throw p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 548
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_1

    .line 550
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static filterCollection(Ljava/util/Collection;Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1591
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$FGAKFg4ITHhtcNlq04P-j-Xz8Ck;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$FGAKFg4ITHhtcNlq04P-j-Xz8Ck;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1593
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 924
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 925
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v1, :cond_1

    .line 926
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 928
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 930
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static focusTalkBackToView(Landroid/view/View;)V
    .locals 1

    .line 1431
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1432
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public static getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 3

    .line 1783
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 1786
    invoke-static {p0, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 1788
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f010049

    const v1, 0x7f010046

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1130
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1131
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x4000

    .line 1140
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1141
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1743
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1746
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070586

    .line 1747
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1748
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1749
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, p0, v1, v5}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1751
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    .line 1752
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 1754
    :cond_1
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1755
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1756
    invoke-virtual {p0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1757
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1758
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1760
    :goto_0
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 859
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 865
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    const-string v1, "Launcher.Utilities"

    const-string v2, "getBitmapFromUri"

    .line 863
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    .line 865
    :goto_3
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 866
    throw p1
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1031
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1032
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentPersonalAssistant()Ljava/lang/String;
    .locals 2

    .line 951
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_personal_assistant"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPersonalAssistantName()Ljava/lang/String;
    .locals 2

    .line 955
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "personal_assistant_google"

    .line 956
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110468

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "personal_assistant_app_vault"

    .line 958
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110467

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 961
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110469

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentWallpaper(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1210
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1214
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1215
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 1216
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentWallpaper error, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public static getDecodeDestSize(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .line 1162
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    int-to-float v1, p1

    .line 1163
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    .line 1164
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 1166
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1167
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    .line 1169
    :cond_0
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1170
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return-object v0
.end method

.method public static getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1695
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomeResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1699
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getDefaultHomeResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 1688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1689
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0xc0000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 344
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result p0

    return p0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "[FZZ",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    aput v1, p2, v0

    const/4 v2, 0x0

    aput v1, p2, v2

    if-eqz p3, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    .line 357
    aget v4, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, p2, v2

    .line 358
    aget v4, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, p2, v0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 360
    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_4

    if-eq v4, p1, :cond_4

    .line 361
    check-cast v4, Landroid/view/View;

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    .line 362
    invoke-interface {p5, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 363
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 364
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v1, v5

    .line 366
    :cond_2
    aget v5, p2, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v2

    .line 367
    aget v5, p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, p2, v0

    .line 368
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a02c1

    if-ne v5, v6, :cond_3

    .line 369
    aget v5, p2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v5, v6

    aput v5, p2, v0

    .line 371
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 374
    aget p1, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v3, v1

    mul-float/2addr p3, v3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p1, p3

    aput p1, p2, v2

    .line 375
    aget p1, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, p4

    sub-float/2addr p1, p0

    aput p1, p2, v0

    :cond_5
    return v1
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 7

    .line 395
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 396
    aget v3, p2, v2

    int-to-float v3, v3

    aput v3, v0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    move-object v0, p0

    :goto_0
    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_0

    if-eqz p3, :cond_1

    .line 404
    :cond_0
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget v5, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v4, v1

    .line 405
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget v5, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v4, v2

    .line 408
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 409
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget v5, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 410
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget v5, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 416
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v1

    .line 417
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v2

    return v3
.end method

.method public static getDeskClockTabActivityIntent()Landroid/content/Intent;
    .locals 3

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.deskclock"

    const-string v2, "com.android.deskclock.DeskClockTabActivity"

    .line 611
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDipPixelSize(F)I
    .locals 0

    .line 437
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public static getDisplayCount(Landroid/content/Context;)I
    .locals 1

    .line 2232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 2234
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getDisplayId(Landroid/content/Context;)I
    .locals 4

    .line 1955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 1959
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDisplayId"

    const/4 v2, 0x0

    .line 1960
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1961
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 1963
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0

    .line 1956
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "call getDisplayId blow sdk 28"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayState(Landroid/content/Context;)I
    .locals 1

    .line 2227
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 2228
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0
.end method

.method public static getDrawableByResourceName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2601
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 2116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2117
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2119
    invoke-virtual {p0, p2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2120
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 2143
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 2144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2147
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getResourceId(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2148
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_0
    const-string v1, "content"

    .line 2152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    .line 2153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2170
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2156
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2157
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v2, v0, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 2163
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Launcher.Utilities"

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object p0

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v0, v2

    :goto_2
    :try_start_4
    const-string v1, "Launcher.Utilities"

    .line 2159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 2163
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    const-string v0, "Launcher.Utilities"

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close content: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_5

    .line 2163
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to close content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Launcher.Utilities"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    :cond_5
    :goto_5
    throw p0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 10

    .line 1992
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1993
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1994
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    .line 1995
    invoke-static {p0}, Lcom/miui/home/library/utils/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const/4 v3, -0x1

    if-nez p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-nez p2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const/4 v6, 0x1

    if-eqz p2, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    const/4 p2, 0x0

    move v6, v5

    move v5, v4

    move v4, p2

    :cond_4
    if-nez v4, :cond_a

    if-eqz p1, :cond_7

    add-int/2addr v6, v3

    if-ltz v6, :cond_a

    if-lt v6, v1, :cond_5

    goto :goto_6

    :cond_5
    move v5, p2

    :goto_4
    if-ge v5, v0, :cond_4

    mul-int v8, v6, v2

    shl-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    .line 2009
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    if-lez v8, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v5, v7

    if-ltz v5, :cond_a

    if-lt v5, v0, :cond_8

    goto :goto_6

    :cond_8
    move v6, p2

    :goto_5
    if-ge v6, v1, :cond_4

    mul-int v8, v6, v2

    shl-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    .line 2016
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    if-lez v8, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz p1, :cond_b

    move v5, v6

    :cond_b
    return v5
.end method

.method public static getFastBlurColor(Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1038
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1044
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1046
    div-int/lit8 v0, v0, 0x2

    if-ge v0, v2, :cond_0

    move v0, v2

    .line 1048
    :cond_0
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    if-le v1, v2, :cond_3

    .line 1051
    div-int/lit8 v1, v1, 0x2

    if-ge v1, v2, :cond_2

    move v1, v2

    .line 1053
    :cond_2
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1059
    throw v0

    .line 1040
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method

.method public static getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 878
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 879
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x1000

    .line 880
    :try_start_2
    new-array v0, v0, [B

    .line 882
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 883
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 891
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 892
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 889
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 887
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 891
    :goto_3
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 892
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0

    :catchall_2
    move-exception v0

    .line 891
    :goto_4
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 892
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 893
    throw v0
.end method

.method public static getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 2

    .line 1793
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f010038

    const v1, 0x7f010046

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 1794
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 1796
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOverrideTaskTransition"

    .line 1797
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1798
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1799
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1800
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1804
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1802
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 1806
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 1808
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getHomePreview()Landroid/graphics/Bitmap;
    .locals 5

    .line 1656
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1660
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v2

    .line 1661
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1660
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 1665
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1666
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 1670
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static getIconDarkShadowPaint(FI)Landroid/graphics/Paint;
    .locals 2

    .line 499
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    .line 501
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1, p0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 504
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getIconShadowBlurPaint(F)Landroid/graphics/Paint;
    .locals 3

    .line 489
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    .line 491
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, p0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 493
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getImageRotation(Ljava/io/InputStream;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x8

    .line 621
    new-array v2, v1, [B

    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 625
    invoke-static {p0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->read(Ljava/io/InputStream;[BI)Z

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x4

    if-eqz v4, :cond_b

    aget-byte v4, v2, v0

    const/16 v8, 0xff

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_b

    .line 626
    aget-byte v4, v2, v6

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_2

    goto :goto_0

    :cond_2
    const/16 v8, 0xd8

    if-eq v4, v8, :cond_1

    if-ne v4, v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v8, 0xd9

    if-eq v4, v8, :cond_a

    const/16 v8, 0xda

    if-ne v4, v8, :cond_4

    goto :goto_1

    .line 643
    :cond_4
    invoke-static {p0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->read(Ljava/io/InputStream;[BI)Z

    move-result v8

    if-nez v8, :cond_5

    return v0

    .line 646
    :cond_5
    invoke-static {v2, v0, v3, v0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v8

    if-ge v8, v3, :cond_6

    const-string p0, "Launcher.Utilities"

    const-string v1, "Invalid length"

    .line 648
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    add-int/lit8 v8, v8, -0x2

    const/16 v9, 0xe1

    if-ne v4, v9, :cond_8

    if-lt v8, v5, :cond_8

    .line 655
    invoke-static {p0, v2, v5}, Lcom/miui/home/launcher/common/Utilities;->read(Ljava/io/InputStream;[BI)Z

    move-result v4

    if-nez v4, :cond_7

    return v0

    :cond_7
    add-int/lit8 v4, v8, -0x6

    .line 657
    invoke-static {v2, v0, v7, v0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v8

    const v9, 0x45786966

    if-ne v8, v9, :cond_9

    .line 658
    invoke-static {v2, v7, v3, v0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_8
    move v4, v8

    :cond_9
    int-to-long v3, v4

    .line 665
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    :cond_a
    :goto_1
    return v0

    :cond_b
    move v4, v0

    :goto_2
    if-le v4, v1, :cond_16

    .line 675
    new-array v2, v4, [B

    .line 676
    invoke-static {p0, v2, v4}, Lcom/miui/home/launcher/common/Utilities;->read(Ljava/io/InputStream;[BI)Z

    move-result p0

    if-nez p0, :cond_c

    return v0

    .line 681
    :cond_c
    invoke-static {v2, v0, v7, v0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result p0

    const v8, 0x49492a00    # 823968.0f

    if-eq p0, v8, :cond_d

    const v9, 0x4d4d002a    # 2.14958752E8f

    if-eq p0, v9, :cond_d

    const-string p0, "Launcher.Utilities"

    const-string v1, "Invalid byte order"

    .line 683
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    if-ne p0, v8, :cond_e

    move p0, v6

    goto :goto_3

    :cond_e
    move p0, v0

    .line 689
    :goto_3
    invoke-static {v2, v7, v7, p0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0xa

    if-lt v7, v8, :cond_15

    if-le v7, v4, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v8, v7, 0x0

    sub-int/2addr v4, v7

    add-int/lit8 v7, v8, -0x2

    .line 698
    invoke-static {v2, v7, v3, p0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v7

    :goto_4
    add-int/lit8 v9, v7, -0x1

    if-lez v7, :cond_16

    const/16 v7, 0xc

    if-lt v4, v7, :cond_16

    .line 701
    invoke-static {v2, v8, v3, p0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result v7

    const/16 v10, 0x112

    if-ne v7, v10, :cond_14

    add-int/2addr v8, v1

    .line 704
    invoke-static {v2, v8, v3, p0}, Lcom/miui/home/launcher/common/Utilities;->pack([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_13

    const/4 v2, 0x3

    if-eq p0, v2, :cond_12

    if-eq p0, v5, :cond_11

    if-eq p0, v1, :cond_10

    const-string p0, "Launcher.Utilities"

    const-string v1, "Unsupported orientation"

    .line 715
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    const/16 p0, 0x10e

    return p0

    :cond_11
    const/16 p0, 0x5a

    return p0

    :cond_12
    const/16 p0, 0xb4

    return p0

    :cond_13
    return v0

    :cond_14
    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v4, -0xc

    move v7, v9

    goto :goto_4

    :cond_15
    :goto_5
    const-string p0, "Launcher.Utilities"

    const-string v1, "Invalid offset"

    .line 691
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    const-string p0, "Launcher.Utilities"

    const-string v1, "Orientation not found"

    .line 723
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getInstalledProvidersForAllUser(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    .line 1649
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1650
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getLineHeight(Landroid/widget/TextView;)I
    .locals 3

    .line 1836
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 1837
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1839
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Launcher.Utilities"

    const-string v2, "getLineHeight error return default value."

    .line 1841
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 2

    const/4 v0, 0x2

    .line 334
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    .line 335
    invoke-static {p0, p1, v0, v1, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p0

    const/4 p1, 0x0

    .line 336
    aget p3, v0, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    aput p3, p2, p1

    .line 337
    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 871
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    invoke-static {}, Lcom/market/sdk/MarketManager;->getMarketPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMd5([B)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "MD5"

    .line 900
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 901
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 902
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v1, "%1$032X"

    .line 903
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMiuiDialogCornerRadius(Landroid/content/Context;)I
    .locals 3

    .line 1560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dialog_bg_corner_radius"

    const-string v1, "dimen"

    const-string v2, "miui"

    .line 1561
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1563
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getMiuiVersionCode()I
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, ""

    .line 191
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    .line 1548
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 1551
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1553
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getPackageNameFromComponentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2025
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 2027
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 2031
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceId(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2180
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "miui"

    .line 2184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    .line 2188
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2193
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 2201
    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2203
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single path segment is not a resource ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 2206
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    .line 2213
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2211
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No resource found for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2208
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than two path segments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2195
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2190
    :catch_1
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package found for authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2183
    :cond_5
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getResourceUri(Landroid/content/res/Resources;I)Landroid/net/Uri;
    .locals 2

    .line 2438
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 2439
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2440
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2441
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2442
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2443
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getSecondSpaceId(Landroid/content/Context;)I
    .locals 10

    .line 2349
    const-class v0, Landroid/provider/Settings$Secure;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getIntForUser"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    .line 2351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v6

    const-string p0, "second_user_id"

    aput-object p0, v3, v7

    sget p0, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleUserNullId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v8

    sget p0, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleCurrentUserId:I

    .line 2352
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v9

    .line 2349
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getShortcutIconContentRation(Landroid/content/Context;)F
    .locals 8

    const-string p0, "icon_mask.png"

    .line 1848
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1849
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 1851
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {p0, v1, v1}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v4, v1}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v5

    .line 1852
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p0, v1, v4}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v1

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    .line 1853
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v4, v4}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v7

    sub-int/2addr v1, v7

    sub-int/2addr v1, v4

    invoke-direct {v2, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1854
    sput-object v2, Lcom/miui/home/launcher/common/Utilities;->sShortcutContentPadding:Landroid/graphics/Rect;

    .line 1860
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1861
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 1862
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 1863
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    sub-int v2, v1, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-int v1, p0, v4

    int-to-float v1, v1

    mul-float/2addr v1, v0

    int-to-float p0, p0

    div-float p0, v1, p0

    cmpl-float v0, v2, p0

    if-lez v0, :cond_0

    move p0, v2

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method public static getSpecifiedSizeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1153
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p2

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p2, p3

    .line 1155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 1156
    invoke-virtual {v5, p0, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1158
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1508
    sget v0, Lcom/miui/home/launcher/common/Utilities;->sStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1509
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/common/Utilities;->sStatusBarHeight:I

    .line 1514
    :cond_0
    sget p0, Lcom/miui/home/launcher/common/Utilities;->sStatusBarHeight:I

    return p0
.end method

.method public static getStringForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 2424
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 2425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getResourceId(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p0

    .line 2429
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    .line 2431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTextContentHeight(Landroid/widget/TextView;)I
    .locals 1

    .line 1828
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static getTextContentWidth(Landroid/widget/TextView;)I
    .locals 4

    .line 1813
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1815
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1817
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    float-to-int v3, v3

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 1824
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    return p0
.end method

.method public static getThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1176
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1177
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1178
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1179
    invoke-static {v0, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getDecodeDestSize(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 1180
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1182
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1184
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p2, p2

    .line 1185
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 1184
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1186
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1188
    :cond_0
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static getTimesMorning()J
    .locals 3

    .line 2506
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 2507
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 2508
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 2509
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 2510
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2511
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimesNight()J
    .locals 3

    .line 2516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x18

    .line 2517
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    const/16 v2, 0xd

    .line 2518
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 2519
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 2520
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2521
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransformationType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 813
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getTransformationType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2257
    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;
    .locals 2

    .line 1580
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;
    .locals 0

    .line 1584
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2494
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2495
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2496
    sget v2, Lcom/miui/home/launcher/common/MiuiResource$AppOps;->OP_INSTALL_SHORTCUT:I

    invoke-static {p0, v2, v1, p1}, Lcom/miui/launcher/utils/AppOpsManagerUtils;->noteOpNoThrow(Landroid/content/Context;IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 2499
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isAppIncompatible(Ljava/lang/String;)Z
    .locals 1

    .line 1121
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDeviceSupportTaskViewMenuLock()Z
    .locals 2

    .line 2418
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 2419
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_DEVICE_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->NOT_SUPPORT_LOCK_ON_GLOBAL_DEVICE_SET:Ljava/util/Set;

    .line 2420
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeviceUnlocked()Z
    .locals 1

    .line 1675
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 1394
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1397
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isFirstEnterSecondSpace(Landroid/content/Context;)Z
    .locals 11

    const/4 v0, 0x0

    .line 2326
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v1

    .line 2327
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string p0, "Launcher.Utilities"

    const-string v1, "not current user"

    .line 2328
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2331
    :cond_0
    sget v2, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleUserNullId:I

    if-ne v1, v2, :cond_1

    const-string p0, "Launcher.Utilities"

    const-string v1, "not create second space"

    .line 2332
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v2, "Launcher.Utilities"

    .line 2335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secondSpaceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const-class v2, Landroid/provider/Settings$Secure;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "getIntForUser"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v0

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    new-array v5, v5, [Ljava/lang/Object;

    .line 2338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v5, v0

    const-string p0, "user_setup_complete"

    aput-object p0, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v10

    .line 2336
    invoke-static {v2, v3, v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "Launcher.Utilities"

    .line 2339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_setup_complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    move v0, v8

    :cond_2
    return v0

    :catch_0
    move-exception p0

    const-string v1, "Launcher.Utilities"

    const-string v2, "isFirstEnterSecondSpace"

    .line 2342
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 2036
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2037
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isHybridApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInWorkManagedMode()Z
    .locals 7

    .line 2555
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "device_policy"

    .line 2556
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 2557
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isDeviceManaged"

    const-class v4, Ljava/lang/Boolean;

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Utilities"

    const-string v2, "Is Device Managed null"

    .line 2560
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2563
    :cond_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Launcher.Utilities"

    .line 2564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Device Managed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    .line 2222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2223
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public static isLowMemoryDevices()Z
    .locals 2

    .line 2390
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->LOW_MEMORY_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiuiLauncher()Z
    .locals 2

    const-string v0, "com.miui.home"

    const-string v1, "com.miui.home"

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNoWordModel()Z
    .locals 1

    .line 783
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotch()Z
    .locals 1

    .line 1520
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->sNotch:Z

    return v0
.end method

.method public static isPadDevice()Z
    .locals 1

    .line 2529
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method

.method public static isPersonalAssistantGoogle()Z
    .locals 2

    .line 965
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    sget-object v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$IKnLaYRIiv9qnpU3lzTZ6umqAVg;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$IKnLaYRIiv9qnpU3lzTZ6umqAVg;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "personal_assistant_google"

    .line 982
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPersonalAssistantOn(Landroid/content/Context;)Z
    .locals 1

    .line 947
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isPocoLauncher()Z
    .locals 2

    const-string v0, "com.mi.android.globallauncher"

    const-string v1, "com.miui.home"

    .line 2592
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.securitycenter"

    .line 1291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.miui.securitycenter:string/btn_text_power_cleanup"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPowerSaverPreventingAnimation(Landroid/content/Context;)Z
    .locals 1

    .line 2580
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "power"

    .line 2584
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 2585
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public static isProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 1683
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.securitycenter"

    .line 1287
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.miui.securitycenter:string/btn_text_quick_cleanup"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRemoveScreenReaderVibrator(Landroid/content/Context;)Z
    .locals 2

    .line 2473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_remove_screen_reader_vibrator"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 1

    .line 2041
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameSignatureWhitHome(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 996
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenCellsLocked()Z
    .locals 1

    .line 788
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isScreenCellsLocked()Z

    move-result v0

    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    .line 2217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 2218
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public static isStaging()Z
    .locals 1

    .line 252
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->sIsStaging:Z

    return v0
.end method

.method public static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 987
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 988
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    return v0
.end method

.method public static isTimeInCurrentDay(Ljava/lang/Long;)Z
    .locals 4

    .line 2525
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getTimesMorning()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getTimesNight()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTouchExplorationEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 2481
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 2483
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2484
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTouchPointInView(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 1637
    new-array v1, v1, [I

    .line 1638
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1639
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 1640
    aget v1, v1, v3

    .line 1641
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 1642
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    int-to-float p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    int-to-float p0, v4

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static isUriFileExists(Landroid/net/Uri;)Z
    .locals 3

    .line 1352
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1355
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 1356
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Launcher.Utilities"

    const-string v2, "isUriFileExists"

    .line 1358
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isUseMiuiHomeAsDefaultHome(Landroid/content/Context;)Z
    .locals 1

    .line 1703
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.miui.home"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isUsePocoHomeAsDefaultHome(Landroid/content/Context;)Z
    .locals 1

    .line 1707
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.mi.android.globallauncher"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    .line 1679
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isVoiceServiceEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "button_voice_service"

    const/4 v1, 0x0

    .line 1576
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isWidgetEnable(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2534
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2535
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    const/high16 v1, 0xc0000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2537
    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 2539
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method static synthetic lambda$asyncGetIncompatibleDialogIntent$3(Ljava/lang/String;Ljava/lang/Void;)Landroid/content/Intent;
    .locals 0

    .line 1113
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getAppErrorTipsDialogIntentForLauncher(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$asyncGetIncompatibleDialogIntent$4(Lcom/miui/home/launcher/common/ResultRunnable;Landroid/content/Intent;)V
    .locals 0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    .line 1116
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ResultRunnable;->run()V

    return-void
.end method

.method static synthetic lambda$filterCollection$5(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 1592
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$isPersonalAssistantGoogle$0()V
    .locals 4

    .line 968
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/AdvertisingIdClient;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Launcher.Utilities"

    const-string v1, "isPersonalAssistantGoogle:deviceId is empty"

    .line 970
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 972
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string v0, "personal_assistant_google"

    goto :goto_0

    :cond_1
    const-string v0, "personal_assistant_app_vault"

    :goto_0
    const-string v1, "Launcher.Utilities"

    .line 973
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "switch_personal_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 976
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_personal_assistant"

    const-string v3, "personal_assistant_none"

    .line 977
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 976
    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method static synthetic lambda$updatemIncompatibleAppList$1(Landroid/content/Context;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    .line 1098
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updatemIncompatibleAppList$2(Ljava/util/List;)V
    .locals 3

    .line 1100
    sput-object p0, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    .line 1101
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1102
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    const-string v0, "Launcher.Utilities"

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/common/Utilities;->mIncompatibleAppList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Launcher.Utilities"

    const-string v0, "mIncompatibleAppList == null"

    .line 1106
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static loadClearBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "com.miui.home.clear_bg.png"

    .line 479
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08025c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    if-le p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadToggleBackground(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const-string v0, "com.miui.home.toggle_bg.png"

    .line 471
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0806af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-object v0
.end method

.method public static makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;
    .locals 5

    .line 1311
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 1312
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1313
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1314
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    .line 1316
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    .line 1318
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "pin_shortcut_extra"

    .line 1323
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "is_elderly_man_shortcut"

    .line 1324
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->addDataToIntent(Landroid/content/Intent;Landroid/os/PersistableBundle;Ljava/lang/String;)V

    const-string v4, "is_default_head"

    .line 1325
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->addDataToIntent(Landroid/content/Intent;Landroid/os/PersistableBundle;Ljava/lang/String;)V

    :cond_2
    const-string v3, "android.intent.extra.shortcut.INTENT"

    .line 1327
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 1328
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1329
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "profile"

    .line 1330
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1332
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1333
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->getShortcutBitmap(Landroid/content/Context;Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "android.intent.extra.shortcut.ICON"

    .line 1335
    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    return-object v2
.end method

.method public static mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V
    .locals 3

    .line 2079
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    if-eq p0, p1, :cond_0

    .line 2082
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2083
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2084
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 2087
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2088
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sMatrix:Landroid/graphics/Matrix;

    sget-object p1, Lcom/miui/home/launcher/common/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2090
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    const/4 p1, 0x0

    aget v0, p2, p1

    int-to-float v0, v0

    aput v0, p0, p1

    const/4 v0, 0x1

    .line 2091
    aget v1, p2, v0

    int-to-float v1, v1

    aput v1, p0, v0

    .line 2092
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2093
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, p1

    .line 2094
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sPoint:[F

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p2, v0

    return-void
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 737
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    .line 523
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 527
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, "manifest.xml"

    .line 528
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 530
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 531
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 536
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 540
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    :goto_0
    :try_start_4
    const-string v3, "Launcher.Utilities"

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 536
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    if-eqz v2, :cond_0

    .line 540
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_0
    return-object v1

    :catchall_2
    move-exception v0

    .line 536
    :goto_1
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    if-eqz v2, :cond_1

    .line 540
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 544
    :catch_5
    :cond_1
    throw v0
.end method

.method public static px2dp(F)I
    .locals 1

    .line 448
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .line 1531
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/16 v1, 0x2f

    .line 1534
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1536
    new-instance v0, Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static read(Ljava/io/InputStream;[BI)Z
    .locals 1

    const/4 v0, 0x0

    .line 745
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public static refreshAutoFillEmpty(Landroid/content/Context;)V
    .locals 1

    .line 821
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->refreshAutoFillEmpty(Landroid/content/Context;)V

    return-void
.end method

.method public static refreshDoubleTapLock(Landroid/content/Context;)V
    .locals 1

    .line 829
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->refreshDoubleTapLock(Landroid/content/Context;)V

    return-void
.end method

.method public static refreshNoWordModel(Landroid/content/Context;)V
    .locals 1

    .line 825
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->refreshScreenNoWordModel(Landroid/content/Context;)V

    return-void
.end method

.method public static refreshScreenCellsLocked(Landroid/content/Context;)V
    .locals 1

    .line 817
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->refreshScreenCellsLocked(Landroid/content/Context;)V

    return-void
.end method

.method public static registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .locals 9

    .line 1888
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "activity"

    .line 1892
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "icon_mask.png"

    .line 1893
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1894
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 1896
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {v1, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v5

    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    .line 1897
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    .line 1898
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v1, v4, v4}, Lcom/miui/home/launcher/common/Utilities;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v1

    sub-int/2addr v8, v1

    sub-int/2addr v8, v4

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1900
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1902
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-gt v5, v6, :cond_2

    const-string p0, "registerMiuiAppTransitionAnimationHelper"

    .line 1903
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    aput-object v6, v5, v3

    .line 1904
    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1907
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v5, "registerMiuiAppTransitionAnimationHelper"

    const/4 v6, 0x2

    .line 1909
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 1910
    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1913
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "android.view.WindowManagerGlobal"

    .line 1916
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getWindowManagerService"

    .line 1917
    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    .line 1918
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1920
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "overrideMiuiAnimSupportWinInset"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1922
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Launcher.Utilities"

    const-string p1, "registerAppTransitionAnimationHelper success"

    .line 1923
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Launcher.Utilities"

    const-string v0, "registerAppTransitionAnimationHelper"

    .line 1925
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2244
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 2245
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static removeDuplicates(Ljava/util/Collection;Ljava/util/function/BiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/BiFunction<",
            "TT;TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1600
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1602
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eq v2, v4, :cond_2

    .line 1603
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1604
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1608
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public static resetResourceDependenceItem()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconShadowBlurPaint:Landroid/graphics/Paint;

    .line 518
    sput-object v0, Lcom/miui/home/launcher/common/Utilities;->sIconDarkShadowPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static setHasShowScreenLockedToast(Z)V
    .locals 0

    .line 798
    sput-boolean p0, Lcom/miui/home/launcher/common/Utilities;->sHasShowScreenLockedToast:Z

    return-void
.end method

.method public static setRectSize(Landroid/graphics/Rect;II)V
    .locals 3

    .line 1832
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 5

    .line 1463
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportIconTextShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070682

    .line 1465
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1466
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const v1, 0x7f070680

    .line 1467
    sget-object v3, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1468
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const v3, 0x7f070681

    .line 1469
    sget-object v4, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1470
    sget-object p0, Lcom/miui/home/launcher/common/Utilities;->sTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    .line 1471
    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1473
    invoke-virtual {p1, p0, p0, p0, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public static showImprovedToast(Landroid/content/Context;II)V
    .locals 1

    .line 1228
    new-instance v0, Lcom/miui/home/launcher/common/Utilities$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities$1;-><init>(Landroid/content/Context;II)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showScreenLockedToast(Landroid/content/Context;)V
    .locals 2

    .line 802
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->sHasShowScreenLockedToast:Z

    if-nez v0, :cond_0

    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    .line 804
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->setHasShowScreenLockedToast(Z)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 842
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    .line 843
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 846
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "Launcher.Utilities"

    const-string p1, "Has no intent uri."

    .line 849
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stream(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 2488
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2110
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1"

    .line 2111
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2252
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 2253
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public static unpinShortcutIfExist(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1302
    invoke-static {p0, p2, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForPinnedShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 1303
    invoke-static {v0}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1304
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Utilities"

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpinShortcut ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-static {p0, p2, p3, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->unpinShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public static unregisterMiuiThumbnailAnimationHelper(Landroid/content/Context;)V
    .locals 7

    .line 1969
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "activity"

    .line 1973
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1974
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    .line 1976
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "unregisterMiuiAppTransitionAnimationHelper"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1978
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1981
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterMiuiAppTransitionAnimationHelper"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1983
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "Launcher.Utilities"

    const-string v0, "unregisterMiuiThumbnailAnimationHelper success"

    .line 1985
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Utilities"

    const-string v1, "unregisterMiuiThumbnailAnimationHelper"

    .line 1987
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static updatemIncompatibleAppList(Landroid/content/Context;)V
    .locals 2

    .line 1097
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$F5MKmtoba1JOZzlekQ2thvWrtMI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$F5MKmtoba1JOZzlekQ2thvWrtMI;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1402
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static useViewToPost(Ljava/lang/Runnable;)V
    .locals 1

    .line 1437
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1441
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static useViewToPostDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1445
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1449
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static useViewToRemoveCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 1453
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method