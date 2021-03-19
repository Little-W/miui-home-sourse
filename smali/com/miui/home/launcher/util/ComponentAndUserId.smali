.class public Lcom/miui/home/launcher/util/ComponentAndUserId;
.super Ljava/lang/Object;
.source "ComponentAndUserId.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    .line 14
    iput p2, p0, Lcom/miui/home/launcher/util/ComponentAndUserId;->userId:I

    return-void
.end method
