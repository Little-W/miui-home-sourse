.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$4:F

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$4:F

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$2:I

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$4:F

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FaoOj5AHlwGEDKR8t0mQ90N9gh0;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->lambda$startHalfAppToHomeAnim$33$NavStubView(FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FI)V

    return-void
.end method
