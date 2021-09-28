.class public Lcom/miui/home/recents/util/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field public static final MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    return-void
.end method
