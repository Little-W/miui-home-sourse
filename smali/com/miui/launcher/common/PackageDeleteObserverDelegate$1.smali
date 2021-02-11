.class Lcom/miui/launcher/common/PackageDeleteObserverDelegate$1;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageDeleteObserverDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/common/PackageDeleteObserverDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/common/PackageDeleteObserverDelegate;


# direct methods
.method constructor <init>(Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/miui/launcher/common/PackageDeleteObserverDelegate$1;->this$0:Lcom/miui/launcher/common/PackageDeleteObserverDelegate;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/miui/launcher/common/PackageDeleteObserverDelegate$1;->this$0:Lcom/miui/launcher/common/PackageDeleteObserverDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;->onPackageDeleted(Ljava/lang/String;I)V

    return-void
.end method
