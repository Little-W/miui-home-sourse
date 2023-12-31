.class public Lcom/miui/home/launcher/util/ClosingAppInfo;
.super Ljava/lang/Object;
.source "ClosingAppInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final isAppPair:Z

.field public final isIconLayoutFromSoscChange:Z

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;IZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    .line 19
    iput p2, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->userId:I

    .line 20
    iput-boolean p3, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    .line 21
    iput-boolean p4, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    return-void
.end method
