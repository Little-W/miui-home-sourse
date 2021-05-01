.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$tNsDFdR-NEYdXW18WnWmNMcWi6U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->lambda$new$420(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)I

    move-result p1

    return p1
.end method
