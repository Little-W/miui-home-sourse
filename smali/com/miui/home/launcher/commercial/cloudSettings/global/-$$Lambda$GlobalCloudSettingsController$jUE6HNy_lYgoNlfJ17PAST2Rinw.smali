.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$jUE6HNy_lYgoNlfJ17PAST2Rinw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->lambda$new$3(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    return p1
.end method
