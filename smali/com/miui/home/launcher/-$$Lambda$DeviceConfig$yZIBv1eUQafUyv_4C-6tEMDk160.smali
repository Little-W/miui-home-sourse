.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$yZIBv1eUQafUyv_4C-6tEMDk160;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$static$328(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;

    move-result-object p1

    return-object p1
.end method
