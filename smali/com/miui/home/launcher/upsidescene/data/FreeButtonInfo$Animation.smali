.class Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;
.super Ljava/lang/Object;
.source "FreeButtonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Animation"
.end annotation


# instance fields
.field public frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/miui/home/library/utils/FileAccessable;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public oneshot:Z

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->this$0:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->oneshot:Z

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$Animation;->frames:Ljava/util/ArrayList;

    return-void
.end method
