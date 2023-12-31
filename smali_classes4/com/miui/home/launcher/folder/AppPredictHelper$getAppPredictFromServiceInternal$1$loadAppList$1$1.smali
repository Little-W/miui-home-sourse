.class final Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;
.super Ljava/lang/Object;
.source "AppPredictHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;->loadAppList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 57
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$updateAppPredict(Lcom/miui/home/launcher/folder/AppPredictHelper;)V

    return-void
.end method
