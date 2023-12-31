.class final Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromService$1;
.super Ljava/lang/Object;
.source "AppPredictHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fromRefresh:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromService$1;->$fromRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 42
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromService$1;->$fromRefresh:Z

    invoke-static {v0, p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$getAppPredictFromServiceInternal(Lcom/miui/home/launcher/folder/AppPredictHelper;Z)V

    return-void
.end method
