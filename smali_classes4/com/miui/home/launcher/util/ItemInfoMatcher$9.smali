.class Lcom/miui/home/launcher/util/ItemInfoMatcher$9;
.super Lcom/miui/home/launcher/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$categoryId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$9;->val$categoryId:I

    invoke-direct {p0}, Lcom/miui/home/launcher/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 127
    instance-of p2, p1, Lcom/miui/home/launcher/AppInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/util/ItemInfoMatcher$9;->val$categoryId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
