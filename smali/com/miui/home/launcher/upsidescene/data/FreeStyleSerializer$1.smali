.class final Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$1;
.super Ljava/lang/Object;
.source "FreeStyleSerializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/upsidescene/data/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/data/Sprite;)I
    .locals 0

    .line 328
    iget p1, p1, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIndex:I

    iget p2, p2, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIndex:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 326
    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$1;->compare(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/data/Sprite;)I

    move-result p1

    return p1
.end method
