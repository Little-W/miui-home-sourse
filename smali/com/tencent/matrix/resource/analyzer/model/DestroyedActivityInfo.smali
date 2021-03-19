.class public Lcom/tencent/matrix/resource/analyzer/model/DestroyedActivityInfo;
.super Ljava/lang/Object;
.source "DestroyedActivityInfo.java"


# instance fields
.field public final mActivityName:Ljava/lang/String;

.field public final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mDetectedCount:I

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/tencent/matrix/resource/analyzer/model/DestroyedActivityInfo;->mDetectedCount:I

    .line 41
    iput-object p1, p0, Lcom/tencent/matrix/resource/analyzer/model/DestroyedActivityInfo;->mKey:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/tencent/matrix/resource/analyzer/model/DestroyedActivityInfo;->mActivityName:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/matrix/resource/analyzer/model/DestroyedActivityInfo;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
