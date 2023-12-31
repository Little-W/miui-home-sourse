.class public final Lcom/miui/home/launcher/folder/FolderIcon2x2_9;
.super Lcom/miui/home/launcher/folder/FolderIcon2x2;
.source "FolderIcon2x2_9.kt"

# interfaces
.implements Lcom/miui/home/launcher/folder/ListenerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIcon2x2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_9;->setMLargeIconNum(I)V

    const/16 p1, 0xc

    .line 12
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_9;->setMItemsMaxCount(I)V

    return-void
.end method
