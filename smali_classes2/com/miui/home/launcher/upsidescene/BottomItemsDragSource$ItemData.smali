.class public Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;
.super Ljava/lang/Object;
.source "BottomItemsDragSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->icon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->title:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method
