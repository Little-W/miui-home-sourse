.class Lcom/miui/home/launcher/util/ItemInfoMatcher$1;
.super Lcom/miui/home/launcher/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/ItemInfoMatcher;->or(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field final synthetic val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field final synthetic val$that:Lcom/miui/home/launcher/util/ItemInfoMatcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;->this$0:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    iput-object p2, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;->val$that:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    iput-object p3, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;->val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;->val$that:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$1;->val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
