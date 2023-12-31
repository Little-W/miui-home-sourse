.class public abstract Lcom/miui/home/launcher/install/PackageInstallerCompat;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/install/PackageInstallerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/install/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;
    .locals 2

    .line 13
    sget-object v0, Lcom/miui/home/launcher/install/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/install/PackageInstallerCompat;->sInstance:Lcom/miui/home/launcher/install/PackageInstallerCompat;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/PackageInstallerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/install/PackageInstallerCompat;->sInstance:Lcom/miui/home/launcher/install/PackageInstallerCompat;

    .line 17
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/install/PackageInstallerCompat;->sInstance:Lcom/miui/home/launcher/install/PackageInstallerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract addActiveSession(Ljava/lang/String;)V
.end method

.method public abstract getActiveSessions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeActiveSession(Ljava/lang/String;)V
.end method
