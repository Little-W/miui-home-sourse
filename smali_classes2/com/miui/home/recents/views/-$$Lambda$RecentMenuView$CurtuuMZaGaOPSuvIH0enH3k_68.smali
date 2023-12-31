.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentMenuView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentMenuView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;->f$0:Lcom/miui/home/recents/views/RecentMenuView;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;->f$0:Lcom/miui/home/recents/views/RecentMenuView;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$onClick$0$RecentMenuView(Z)V

    return-void
.end method
