.class public Lcom/miui/launcher/common/PackageDeleteObserverDelegate;
.super Ljava/lang/Object;
.source "PackageDeleteObserverDelegate.java"


# instance fields
.field private mDeleteObserver:Landroid/content/pm/IPackageDeleteObserver$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/miui/launcher/common/PackageDeleteObserverDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate$1;-><init>(Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    iput-object v0, p0, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;->mDeleteObserver:Landroid/content/pm/IPackageDeleteObserver$Stub;

    return-void
.end method


# virtual methods
.method public getDeleteObserver()Landroid/content/pm/IPackageDeleteObserver;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;->mDeleteObserver:Landroid/content/pm/IPackageDeleteObserver$Stub;

    return-object v0
.end method

.method public onPackageDeleted(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
