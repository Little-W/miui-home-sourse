.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$AgN-HaQFVzvFCY14Ez3QMP-nu8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$AgN-HaQFVzvFCY14Ez3QMP-nu8I;->f$0:Lcom/miui/home/recents/views/TaskStackView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$AgN-HaQFVzvFCY14Ez3QMP-nu8I;->f$0:Lcom/miui/home/recents/views/TaskStackView;

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->lambda$onPickUpViewFromPool$2$TaskStackView(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
