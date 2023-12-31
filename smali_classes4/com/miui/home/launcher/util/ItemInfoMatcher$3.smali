.class Lcom/miui/home/launcher/util/ItemInfoMatcher$3;
.super Lcom/miui/home/launcher/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/ItemInfoMatcher;->not(Lcom/miui/home/launcher/util/ItemInfoMatcher;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$3;->val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$3;->val$matcher:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
