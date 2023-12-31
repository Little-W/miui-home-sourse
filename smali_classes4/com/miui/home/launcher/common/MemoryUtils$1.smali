.class Lcom/miui/home/launcher/common/MemoryUtils$1;
.super Ljava/lang/Object;
.source "MemoryUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "MemoryUtils"

    const-string v0, "trimMemoryInBackground TRIM_MEMORY_UI_HIDDEN"

    .line 30
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->trimMemory(I)V

    return-void
.end method
