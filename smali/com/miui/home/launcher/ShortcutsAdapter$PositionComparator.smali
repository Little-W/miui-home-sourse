.class public Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;
.super Ljava/lang/Object;
.source "ShortcutsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ShortcutsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)I
    .locals 0

    .line 55
    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget p2, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    if-gt p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;->compare(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)I

    move-result p1

    return p1
.end method
