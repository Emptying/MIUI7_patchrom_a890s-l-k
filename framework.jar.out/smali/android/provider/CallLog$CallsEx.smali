.class public Landroid/provider/CallLog$CallsEx;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallsEx"
.end annotation


# static fields
.field public static final CNAP:Ljava/lang/String; = "cnap"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FEATURE_CALL_FORWARDING:I = 0x2

.field public static final FEATURE_FORWARDED_INCOMING:I = 0x4

.field public static final FEATURE_HD_QUALITY:I = 0x10

.field public static final FEATURE_NO_ADD_CNAP:I = 0x20

.field public static final FEATURE_REJECT:I = 0x1

.field public static final FEATURE_SWITCHED_CALL:I = 0x8

.field public static final GROUPLIST:Ljava/lang/String; = "grouplist"

.field public static final GROUPTYPE:Ljava/lang/String; = "grouptype"

.field public static final GROUP_3WAY_TYPE:I = 0x2

.field public static final GROUP_CONFERENCE_TYPE:I = 0x3

.field public static final GROUP_FIRST_TYPE:I = 0x0

.field public static final GROUP_GROUPPLUS_TYPE:I = 0x4

.field public static final GROUP_SECOND_TYPE:I = 0x1

.field public static final IM_TYPE:I = 0x5

.field public static final LINE_NUMBER:Ljava/lang/String; = "line_number"

.field public static final MESSAGE_TYPE:I = 0x1

.field public static final MSGID:Ljava/lang/String; = "msgid"

.field public static final MSGTYPE:Ljava/lang/String; = "msgtype"

.field public static final RECORD:Ljava/lang/String; = "record"

.field public static final REJECT:Ljava/lang/String; = "feature"

.field public static final ROAMING:Ljava/lang/String; = "roaming"

.field public static final SECRET:Ljava/lang/String; = "secret"

.field public static final SECRET_PARAM_KEY:Ljava/lang/String; = "secret_key"

.field public static final TYPE:Ljava/lang/String; = "type_ex"

.field public static final USIM_TYPE:I = 0x6

.field public static final VOICE_TYPE:I = 0x0

.field public static final VOIP_TYPE:I = 0x2

.field public static final VOLTE_TYPE:I = 0x4

.field public static final VT_TYPE:I = 0x3


# instance fields
.field public mFeature:I

.field public mGroupList:Ljava/lang/String;

.field public mGroupType:I

.field public mLineNumber:Ljava/lang/String;

.field public mMsgID:J

.field public mMsgType:Ljava/lang/String;

.field public mRecord:Ljava/lang/String;

.field public mRoaming:I

.field public mSecret:Z

.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 751
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 765
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 766
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "roaming"    # I

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 782
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 783
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 784
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "roaming"    # I
    .param p4, "secret"    # Z

    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 840
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 841
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 842
    iput-boolean p4, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 843
    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "roaming"    # I
    .param p4, "secret"    # Z
    .param p5, "record"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 907
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 908
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 909
    iput-boolean p4, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 910
    iput-object p5, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 911
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "secret"    # Z

    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 820
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 821
    iput-boolean p3, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 822
    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "secret"    # Z
    .param p4, "record"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 884
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 885
    iput-boolean p3, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 886
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 887
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msgID"    # J
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 770
    iput-wide p2, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 771
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 772
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msgID"    # J
    .param p4, "msgType"    # Ljava/lang/String;
    .param p5, "secret"    # Z

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 826
    iput-wide p2, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 827
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 828
    iput-boolean p5, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 829
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msgID"    # J
    .param p4, "msgType"    # Ljava/lang/String;
    .param p5, "secret"    # Z
    .param p6, "record"    # Ljava/lang/String;

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 891
    iput-wide p2, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 892
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 893
    iput-boolean p5, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 894
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 895
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 757
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 759
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 776
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 777
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 778
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 788
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 789
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 790
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 791
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "grouptype"    # I
    .param p6, "grouplist"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 795
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 796
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 797
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 798
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mGroupType:I

    .line 799
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mGroupList:Ljava/lang/String;

    .line 800
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "grouptype"    # I
    .param p6, "grouplist"    # Ljava/lang/String;
    .param p7, "secret"    # Z

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 855
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 856
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 857
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 858
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mGroupType:I

    .line 859
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mGroupList:Ljava/lang/String;

    .line 860
    iput-boolean p7, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 861
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "grouptype"    # I
    .param p6, "grouplist"    # Ljava/lang/String;
    .param p7, "secret"    # Z
    .param p8, "record"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 924
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 925
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 926
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 927
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mGroupType:I

    .line 928
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mGroupList:Ljava/lang/String;

    .line 929
    iput-boolean p7, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 930
    iput-object p8, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 931
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "secret"    # Z

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 847
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 848
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 849
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 850
    iput-boolean p5, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 851
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "secret"    # Z
    .param p6, "record"    # Ljava/lang/String;

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 915
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 916
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 917
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 918
    iput-boolean p5, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 919
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 920
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "secret"    # Z

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 833
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 834
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 835
    iput-boolean p4, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 836
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "secret"    # Z
    .param p5, "record"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 899
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 900
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 901
    iput-boolean p4, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 902
    iput-object p5, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 903
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "secret"    # Z

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 812
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 813
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 815
    iput-boolean p3, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 816
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "secret"    # Z
    .param p4, "record"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 875
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 876
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 878
    iput-boolean p3, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 879
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 880
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "secret"    # Z

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 805
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 807
    iput-boolean p2, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 808
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "secret"    # Z
    .param p3, "record"    # Ljava/lang/String;

    .prologue
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 867
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 869
    iput-boolean p2, p0, Landroid/provider/CallLog$CallsEx;->mSecret:Z

    .line 870
    iput-object p3, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 871
    return-void
.end method
